#include "fpga_api.h"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <cstring>



#define min(x, y) (((x) < (y)) ? (x) : (y))

FPGA::FPGA(off_t data_addr, off_t output_addr, int m_size, int v_size)
{
  m_size_ = m_size;
  v_size_ = v_size;
  data_size_ = (m_size_ + 1) * v_size_ * sizeof(int); // fpga bram data size

  fd_ = open("/dev/mem", O_RDWR);
  qdata_ = static_cast<int *>(mmap(NULL, data_size_, PROT_READ | PROT_WRITE, MAP_SHARED, fd_, data_addr));
  output_ = static_cast<unsigned int *>(mmap(NULL, sizeof(unsigned int), PROT_READ | PROT_WRITE, MAP_SHARED, fd_, output_addr));

  num_block_call_ = 0;
}

FPGA::~FPGA()
{
  munmap(qdata_, data_size_);
  munmap(output_, sizeof(unsigned int));
  close(fd_);
}

int *FPGA::qmatrix(void)
{
  return qdata_ + v_size_;
}

int *FPGA::qvector(void)
{
  return qdata_;
}

void FPGA::reset(void)
{
  num_block_call_ = 0;
}

int FPGA::num_block_call(void)
{
  return num_block_call_;
}

void quantize(const float* input, int* quantized, int num_input, int bits_min, int bits_max, int offset, float scale)
{
  for(int i = 0; i < num_input; i++)
  {
    quantized[i] = (input[i]/scale) ; // TODO: convert floating point to quantized value
  }
}

void dequantize(const int* quantized, float* output, int num_output, int offset, float scale)
{
  for(int i = 0; i < num_output; i++)
  {
    output[i] = (quantized[i])*scale; // TODO: convert quantized value to floating point
  }
}

const int *__attribute__((optimize("O0"))) FPGA::qblockMV(Compute* comp)
{
  num_block_call_ += 1;

  // fpga version
  *output_ = 0x5555;
  while (*output_ == 0x5555);

  return qdata_;
}

void FPGA::largeMV(const float *large_mat, const float *input, float *output, int num_input, int num_output, Compute* comp)
{
  int *vec = this->qvector();
  int *mat = this->qmatrix();

  int *qlarge_mat = new int[num_input*num_output];
  int *qinput = new int[num_input];
  int *qoutput = new int[num_output];

  // quantize
  int act_bits_min = 0;
  int act_bits_max = (1<<(comp->act_bits-1))-1;

  float sz = (comp->act_min)*(-1.0);
  float act_scale = (comp->act_max + sz)/act_bits_max; // TODO calculate the scale factor
  int act_offset = (sz/act_scale); // TODO calculate the zero-offset
  quantize(input, qinput, num_input, act_bits_min, act_bits_max, act_offset, act_scale);

  int weight_bits_min = 0;
  int weight_bits_max = (1<<(comp->weight_bits-1))-1;

  sz = (comp->weight_min)*(-1.0);
  float weight_scale = (comp->weight_max + sz)/weight_bits_max; // TODO calculate the scale factor
  int weight_offset = (sz/weight_scale); // TODO calculate the zero-offset
  quantize(large_mat, qlarge_mat, num_input*num_output, weight_bits_min, weight_bits_max, weight_offset, weight_scale);




  // 0) Initialize output vector
  for (int i = 0; i < num_output; ++i)
    qoutput[i] = 0;

  for (int i = 0; i < num_output; i += m_size_)
  {
    for (int j = 0; j < num_input; j += v_size_)
    {
      // 0) Initialize input vector
      int block_row = min(m_size_, num_output - i);
      int block_col = min(v_size_, num_input - j);
      memset(vec, 0, sizeof(int)*v_size_);
      memset(mat, 0, sizeof(int)*m_size_*v_size_);

      memcpy(vec, qinput+j, sizeof(int)*block_col);
      for(int k=0; k< block_row; k++){
        memcpy(mat+k*v_size_ , qlarge_mat +j+ (k+i)*num_input, sizeof(int)*block_col);
      }
      
      // 3) Call a function `qblockMV() to execute MV multiplication
      const int* ret = this->qblockMV(comp);

      // 4) Accumulate intermediate results
      for(int row = 0; row < block_row; ++row)
        qoutput[i + row] += ret[row];
    }
  }

  dequantize(qoutput, output, num_output, 0, act_scale*weight_scale);
}

void FPGA::convLowering(const std::vector<std::vector<std::vector<std::vector<float>>>> &cnn_weights,
                        std::vector<std::vector<float>> &new_weights,
                        const std::vector<std::vector<std::vector<float>>> &inputs,
                        std::vector<std::vector<float>> &new_inputs)
{
  /*
   * Arguments:
   *
   * conv_weights: [conv_channel, input_channel, conv_height, conv_width]
   * new_weights: [?, ?]
   * inputs: [input_channel, input_height, input_width]
   * new_inputs: [?, ?]
   *
   */

  int conv_channel = cnn_weights.size();
  int input_channel = cnn_weights[0].size();
  int conv_height = cnn_weights[0][0].size();
  int conv_width = cnn_weights[0][0][0].size();
  //int input_channel = inputs.size();
  int input_height = inputs[0].size();
  int input_width = inputs[0][0].size();

  for(int a=0; a < conv_channel; a++)
    for(int b=0; b < input_channel; b++)
      for(int c=0; c < conv_height; c++)
        for(int d=0; d < conv_width; d++)
          new_weights[a][b*conv_height*conv_width + c*conv_width + d] = cnn_weights[a][b][c][d];
  

  for(int k=0; k< input_channel; k++)
    for(int i=0; i< conv_height; i++)
      for(int j=0; j< conv_width; j++)
        for(int a=0; a< input_height - conv_height + 1; a++)
          for(int b=0 ; b< input_width - conv_width + 1; b++){
            new_inputs[k*conv_height*conv_width + i*conv_width + j][a*(input_width - conv_width + 1)+b] = inputs[k][i+a][j+b];
          }
}

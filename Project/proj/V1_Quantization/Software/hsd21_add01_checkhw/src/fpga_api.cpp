#include "fpga_api.h"
#include <cstdio>
#include <cstring>
#include <iostream>
using namespace std;

#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define DATA_SIZE SIZE*(SIZE*2)*sizeof(int) // fpga bram data size

#define min(x,y) (((x)<(y))?(x):(y))
#define max(x, y) (((x) > (y)) ? (x) : (y))

FPGA::FPGA(off_t data_addr, off_t api_addr)
{
    fd_ = open("/dev/mem", O_RDWR);
    data_ = static_cast<int*>(mmap(NULL, DATA_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd_, data_addr));
    api_ = static_cast<unsigned int*>(mmap(NULL, sizeof(unsigned int), PROT_READ|PROT_WRITE, MAP_SHARED,fd_, api_addr));
}

FPGA::~FPGA()
{
    munmap(data_, DATA_SIZE);
    munmap(api_, sizeof(unsigned int));
    close(fd_);
}

int* FPGA::matrix_M1(void)
{
	return data_ ;
}

int* FPGA::matrix_M2(void)
{
	return data_ + SIZE * SIZE;
}

const int* __attribute__((optimize("O0"))) FPGA::run()
{
    for (int i = 0; i < 128; i++) {
      cout << data_[i] << " ";
      if (i % 8 == 7) cout << endl;
    }
    *api_ = 0x5555;
    while(*api_ == 0x5555);
    for (int i = 0; i < 64; i++) {
      cout << data_[i+1] << " ";
      if (i % 8 == 7) cout << endl;
    }

    return data_+1;    
}

// Test code for bitstream
void FPGA::largeMM(const int* weight_mat, const int* input_mat, int* output, 
							int num_input, int num_output, int num_matrix2) {
	int* m1 = this->matrix_M1();
	int* m2 = this->matrix_M2();
	for(int i = 0; i < num_output*num_matrix2; ++i)
    output[i] = 0;

  for(int i = 0; i < num_output; i += SIZE)
  {
    for(int j = 0; j < num_input; j += SIZE)
    {			
      for(int k = 0; k < num_matrix2; k += SIZE)
      {
        // 0) Initialize input vector
        int block_row = min(SIZE, num_output-i);
        int block_col_1 = min(SIZE, num_input-j);
        int block_col_2 = min(SIZE, num_matrix2-k);

        // 1) Assign a m1
        for (int row = 0; row < block_row; row++) {
          for (int col = 0; col < block_col_1; col++)
            m1[row*SIZE + col] = weight_mat[(i+row)*num_input + (j+col)];
          for (int col = block_col_1; col < SIZE; col++)
            m1[row*SIZE + col] = 0;
      	}
        for (int l = block_row*SIZE; l < SIZE*SIZE; l++)
            m1[l] = 0;

        // 2) Assign a m2
        for (int row = 0; row < block_col_1; row++) {
          for (int col = 0; col < block_col_2; col++)
            m2[row*SIZE + col] = input_mat[(j+row)*num_matrix2 + (k+col)];
          for (int col = block_col_2; col < SIZE; col++)
            m2[row*SIZE + col] = 0;
      	}
        for (int l = block_col_1*SIZE; l < SIZE*SIZE; l++)
            m2[l] = 0;

        // 3) Call a function `blockMM() to execute Matrix matrix multiplication
        const int* rst = this->run();

        // 4) Accumulate intermediate results
        // It is slightly different from the code for the project.
        for(int n = 0; n<block_row; ++n) {
          for(int m = 0; m<block_col_2; ++m) {
            output[n*SIZE + m] += rst[n*SIZE + m];
          }
        }
      } 
    }
  }
}


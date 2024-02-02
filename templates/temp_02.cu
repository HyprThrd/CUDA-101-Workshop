#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

//Device Code
__global__ void hello_cuda(){
	//Kernal code
}

//Host code
int main(){ 
	//kernel launch parameters
  int nx, ny;
  nx = ;
  ny = ;
  
	dim3 block(,,);
	dim3 grid(nx /block.x, ny/block.y);

	hello_cuda<<<grid, block>>>();

	cudaDeviceSynchronize();// will make the prgram stall till all the launched kernels have finished execution
	cudaDeviceReset();
	return 0;
}

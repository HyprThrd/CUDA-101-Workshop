#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

//Device Code
__global__ void hello_cuda(){
	printf("Hello from CUDA world \n");
}

//Host code
int main(){ 
	//kernel launch parameters
	dim3 block(8,2,1);
	dim3 grid(2,2,1);

	hello_cuda<<<grid, block>>>();
	cudaDeviceSynchronize();// will make the prgram stall till all the launched kernels have finished execution
	cudaDeviceReset();
	return 0;
}

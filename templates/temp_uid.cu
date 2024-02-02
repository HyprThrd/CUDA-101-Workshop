#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdlib.h>
#include <stdio.h>

//Device Code
__global__ void unique_idx_calc_threadIdx(int * input) {

int gid = ;

printf("threadIdx.x : %d, value : %d \n", gid, input[gid]);
}

//Host code
int main() {

    int array_size = 8;
    int array_byte_size = sizeof(int) * array_size;
    int h_data[] = {31, 34, 41, 44, 23, 32, 34, 23};

	for(int i = 0; i < array_size; i++){
		printf("%d ", h_data[i]);
	}
	printf("\n \n");

	int * d_data;
	cudaMalloc((void**)&d_data, array_byte_size);
	cudaMemcpy(d_data, h_data, array_byte_size, cudaMemcpyHostToDevice);

	dim3 blocks(,);
	dim3 threads_per_block();
	unique_idx_calc_threadIdx <<<blocks, threads_per_block>>>(d_data);
	
    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}

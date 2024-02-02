#include <stdio.h>

#include "cuda_runtime.h"
#include "device_launch_parameters.h"


__global__ void print_block_id(){
    printf("%d %d %d \n", blockIdx.x, blockIdx.y, blockIdx.z);
}

int main(){
    int nx, ny;

    nx = 8;
    ny = 1;

    dim3 blocks(2,1,1);
    dim3 num_threads_block(nx/blocks.x, ny/blocks.y);

    print_block_id<<<blocks, num_threads_block>>>();

    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}
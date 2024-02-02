#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void hello_cuda(){
    printf("Values: %d %d %d \n", threadIdx.x, threadIdx.y, threadIdx.z);
}

int main(){
    int nx,ny;
    nx = 8;
    ny = 1;

    dim3 block(2,1,1);
    dim3 threads(nx/block.x,ny/block.y);

    hello_cuda<<<block,threads>>>();
    cudaDeviceSynchronize();
    cudaDeviceReset();


    return 0;
}
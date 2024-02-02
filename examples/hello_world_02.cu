#include <stdio.h>

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

__global__ void hello_cuda(){
    printf("Hello from CUDA world \n");
}


int main(){
    
    dim3 block(8,2,1);
    dim3 threads_per_block(2,2,1);
    
    hello_cuda<<<block, threads_per_block>>>();

    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}

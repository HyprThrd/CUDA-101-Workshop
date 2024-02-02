#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>


__global__ void hello_cuda(){
    printf("Hello from GPU\n");
}

int main(){
    hello_cuda<<<1, 10>>>();
    printf("I am here in CPU");

    cudaDeviceSynchronize();
    cudaDeviceReset();

    return 0;
}

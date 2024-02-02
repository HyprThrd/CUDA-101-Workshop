#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>


__global__ void hello_cuda(){
    //Kernal code
}

int main(){

    //Kernal call with device launch params
    hello_cuda<<<1, 10>>>();
    //Device code

    cudaDeviceSynchronize();
    cudaDeviceReset();

    return 0;
}

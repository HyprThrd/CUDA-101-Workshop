#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void hello_cuda(){
    printf("Values: %d %d %d \n", , , );
}

int main(){
    int nx,ny;
    nx = ;
    ny = ;

    dim3 block(,,);
    dim3 threads(,);

    hello_cuda<<<block,threads>>>();
    cudaDeviceSynchronize();
    cudaDeviceReset();

    return 0;
}

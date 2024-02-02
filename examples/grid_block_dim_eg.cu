#include "cuda_runtime.h"
#include "device_launch_parameters.h"


#include <stdio.h>

//Device Code
__global__ void print_details() {
    printf("blockIdx x: % d  y : % d  z : % d \nblockDim x: % d  y : % d  z : % d\ngridDim x: % d  y : % d  z : % d ", blockIdx.x, blockIdx.y, blockIdx.z, blockDim.x, blockDim.y, blockDim.z,gridDim.x, gridDim.y, gridDim.z);
}

//Host code
int main() {

    int nx, ny;

    nx = 16;
    ny = 16;

    //kernel launch parameters

    dim3 block(8, 8);
    dim3 grid(nx/block.x, ny/block.y);

    print_details << <grid, block >> > (); // async call
    printf("Hello from CPU \n");
    cudaDeviceSynchronize();// will make the prgram stall till all the launched kernels have finished execution


    cudaDeviceReset();
    return 0;
}

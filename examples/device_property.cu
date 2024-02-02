#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

void query_device(){
  int deviceCount= 0;
  cudaGetDeviceCount(&deviceCount);

  if(deviceCount == 0){
    printf("No CUDA Support Device found");
  }

  int devNo = 0;
  cudaDeviceProp iProp;
  cudaGetDeviceProperties( &iProp, devNo);

  printf("Device %d: %s\n", devNo, iProp.name);
  printf("Number of multiprocessors : %d\n ", iProp.multiProcessorCount);
  printf("Clock : %d \n", iProp.clockRate);
  printf("Compute Capability: %d.%d", iProp.major, iProp.minor);

}

int main(){
  query_device();
  return 0;
}
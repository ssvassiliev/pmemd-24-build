# pmemd-24-build

- Build with gofbc/2023a fails because gcc/12.3 is oficially incompatible with cuda/12.2. This chech can be disabled using:

AmberTools-25_CudaConfig.patch
AmberTools-25_CudaConfig_quick.patch

- Can't build with gofbc/2024a because we don't have netcdf-mpi and netcdf-fortran-mpi built with gcc/13.3

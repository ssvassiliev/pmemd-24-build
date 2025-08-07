# pmemd-24-build

- Build with gofbc/2023a fails because gcc/12.3 is oficially incompatible with cuda/12.2. This check can be disabled using AmberTools-25_CudaConfig.patch

- Can't build with gofbc/2024a because we don't have netcdf-mpi and netcdf-fortran-mpi built with gcc/13.3

- All updates are already applied in the downloaded source tarball. For this reason using patchlevel 3 fails.  

# PATCH FindNCCL.cmake to use EBROOTNCCL
# PATCH 3rdPartyTools.cmake: add nccl to the list of needed tools and the list of their descriptions
cmake \
   -DCMAKE_INSTALL_PREFIX=/home/svassili/.local/easybuild/software/2023/x86-64-v4/CUDA/gcc12/openmpi4/cuda12.2/amber/24.1 \
   -DCMAKE_BUILD_TYPE=Release \
   -DCMAKE_INSTALL_LIBDIR:PATH=lib \
   -DCMAKE_VERBOSE_MAKEFILE=ON \
   -DCMAKE_FIND_USE_PACKAGE_REGISTRY=OFF \
   -DCMAKE_CUDA_HOST_COMPILER=/cvmfs/soft.computecanada.ca/easybuild/software/2023/x86-64-v4/Compiler/gcc12/openmpi/4.1.5/bin/mpicxx \
   -DCMAKE_CUDA_ARCHITECTURES="70;75;80;86;90" \
   -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
   -DCMAKE_SKIP_INSTALL_RPATH=ON  \
   -DBUILD_QUICK=FALSE \
   -DNCCL=TRUE \
   -DPMEMD_ONLY=TRUE \
   -DMPI=TRUE  \
   -DOPENMP=TRUE \
   -DBLA_VENDOR=FlexiBLAS \
   -DCUDA=TRUE \
   -DFORCE_EXTERNAL_LIBS='nccl;netcdf;netcdf-fortran' \
   -DDOWNLOAD_MINICONDA=FALSE \
   -DUSE_FFT=TRUE  \
   -DCHECK_UPDATES=FALSE \
   -DAPPLY_UPDATES=FALSE  \
   -DTRUST_SYSTEM_LIBS=TRUE \
   -DINSTALL_TESTS=FALSE \
   -DCOMPILER=AUTO ../

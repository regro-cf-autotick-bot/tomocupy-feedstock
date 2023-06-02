echo nvcc is %CUDACXX%   
echo CUDA path is %CUDA_PATH%   
echo CUDAToolkit path is %CudaToolkitDir%
echo CMake Generator is %CMAKE_GENERATOR%
echo CUDAARCHS are %CUDAARCHS%

set CUDAToolkit_ROOT=%CudaToolkitDir%
set CMAKE_CUDA_COMPILER=%CUDACXX%
set CMAKE_CUDA_COMPILER_TOOLKIT_ROOT=%CudaToolkitDir%

echo CMAKE_CUDA_COMPILER is %CMAKE_CUDA_COMPILER%
echo CMAKE_CUDA_COMPILER_TOOLKIT_ROOT is %CMAKE_CUDA_COMPILER_TOOLKIT_ROOT%

set CUDAToolkit_ROOT=%CudaToolkitDir%
set CMAKE_CUDA_COMPILER=%CUDACXX%
set CMAKE_CUDA_COMPILER_TOOLKIT_ROOT=%CudaToolkitDir%

set CMAKE_CUDA_FLAGS="-allow-unsupported-compiler"
set CMAKE_CUDA_FLAGS_INIT="-allow-unsupported-compiler"

if exist "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.2/bin/nvcc.exe" echo "C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.2/bin/nvcc.exe exist" 

%PYTHON% -m pip install . -vvv --no-build-isolation --no-deps
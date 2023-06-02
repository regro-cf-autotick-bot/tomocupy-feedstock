for /f "tokens=* usebackq" %%f in (`where nvcc`) do (set "dummy=%%f" && call set "CUDACXX=%%dummy:\=\\%%")  
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
set CMAKE_CUDA_COMPILER_TOOLKIT_ROOT="C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2"
set CUDATOOLKITDIR = "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.2"
set NVCC="%CUDACXX% --use-local-env"
echo "nvcc is %NVCC%, CUDA path is %CUDA_PATH%" 


%PYTHON% -m pip install . -vv --no-build-isolation --no-deps


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
type %CUDACXX%
IF EXISTS "%CMAKE_CUDA_COMPILER_TOOLKIT_ROOT%/nvvm/libdevice" echo "%CMAKE_CUDA_COMPILER_TOOLKIT_ROOT%/nvvm/libdevice" exist


%PYTHON% -m pip install . -vv --no-build-isolation --no-deps

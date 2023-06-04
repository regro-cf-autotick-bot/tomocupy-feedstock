:: Set CUDACXX with call to 'where nvcc'
for /f "tokens=* usebackq" %%f in (`where nvcc`) do (set "dummy=%%f" && call set "CUDACXX=%%dummy:\=\\%%")

echo nvcc is %CUDACXX%
echo CUDA path is %CUDA_PATH%
echo CMAKE_ARGS is %CMAKE_ARGS%

%PYTHON% -m pip install . -vvv --no-deps --no-build-isolation
if errorlevel 1 exit /b 1

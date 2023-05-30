:: Set CUDACXX with call to 'where nvcc'
for /f "tokens=* usebackq" %%f in (`where nvcc`) do (set "dummy=%%f" && call set "CUDACXX=%%dummy:\=\\%%")
echo %CUDACXX%
setlocal EnableDelayedExpansion

mkdir build
if errorlevel 1 exit 1
cmake ^
    -GNinja ^
    -DCMAKE_INSTALL_PREFIX=$PREFIX$ ^
    -DCMAKE_CXX_EXTENSIONS=OFF ^
    %CMAKE_ARGS$ ^
    %CUDA_ARGS%  ^
    -S %SRC_DIR% ^
    -B build ^
    -DARBORX_ENABLE_MPI=OFF
    -S %SRC_DIR%
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1
cmake --install .
if errorlevel 1 exit 1

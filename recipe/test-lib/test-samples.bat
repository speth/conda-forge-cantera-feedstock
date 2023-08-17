echo on

rem Test clib example with CMake
echo -e "\n***** Testing clib example with CMake *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\clib"
echo "==="
type CMakeLists.txt
echo "==="
mkdir build
cd build
cmake ..
cmake --build . --config Release
demo.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

rem Test clib example with SCons
echo -e "\n***** Testing clib example with SCons *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\clib"
echo "==="
type SConstruct
echo "==="
scons
demo.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

rem Test kinetics1 example with CMake
echo -e "\n***** Testing kinetics1 example with CMake *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\cxx\kinetics1"
echo "==="
type CMakeLists.txt
echo "==="
mkdir build
cd build
cmake ..
cmake --build . --config Release
kinetics1.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

rem Test kinetics1 example with SCons
echo -e "\n***** Testing kinetics1 example with SCons *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\cxx\kinetics1"
echo "==="
type SConstruct
echo "==="
scons
kinetics1.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

rem Test openmp_ignition example with CMake
echo -e "\n***** Testing openmp_ignition example with CMake *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\cxx\openmp_ignition"
echo "==="
type CMakeLists.txt
echo "==="
mkdir build
cd build
cmake ..
cmake --build . --config Release
openmp_ignition.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

rem Test openmp_ignition example with SCons
echo -e "\n***** Testing openmp_ignition example with SCons *****\n"
cd "%CONDA_PREFIX%\share\cantera\samples\cxx\openmp_ignition"
echo "==="
type SConstruct
echo "==="
scons
openmp_ignition.exe
if errorlevel 1 exit 1
echo "SUCCESS!"

echo ****************************
echo ALL SAMPLES RAN SUCCESSFULLY
echo ****************************

setlocal EnableDelayedExpansion
@echo on

curl -o sdrplay_api.exe "https://www.sdrplay.com/software/SDRplay_RSP_API-Windows-%sdrplay_api_version%.exe"
if errorlevel 1 exit 1
sdrplay_api.exe /sp- /verysilent /suppressmsgboxes /norestart /currentuser /log="sdrplay_api_log.txt" /dir="%SRC_DIR%/sdrplay_api"

:: Make a build folder and change to it
mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1

:: configure
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE:STRING=Release ^
    -DCMAKE_INSTALL_LIBDIR:STRING=lib ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
    -DLIBSDRPLAY_INCLUDE_DIRS="%SRC_DIR%/sdrplay_api/API/inc" ^
    -DLIBSDRPLAY_LIBRARIES="%SRC_DIR%/sdrplay_api/API/x64/sdrplay_api.lib" ^
    ..
if errorlevel 1 exit 1

:: build
cmake --build . --config Release -- -j%CPU_COUNT%
if errorlevel 1 exit 1

:: install
cmake --build . --config Release --target install
if errorlevel 1 exit 1

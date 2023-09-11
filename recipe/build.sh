#!/usr/bin/env bash

set -ex

cmake_config_args=(
    -DCMAKE_BUILD_TYPE=Release
)

mkdir sdrplay_api
pushd sdrplay_api

if [[ $target_platform == linux-64 ]] ; then
    wget "https://www.sdrplay.com/software/SDRplay_RSP_API-Linux-${sdrplay_api_version}.run"
    7z x "SDRplay_RSP_API-Linux-${sdrplay_api_version}.run"
    7z x "SDRplay_RSP_API-Linux-${sdrplay_api_version}"
    cmake_config_args+=(
        -DLIBSDRPLAY_INCLUDE_DIRS="$SRC_DIR/sdrplay_api/inc"
        -DLIBSDRPLAY_LIBRARIES="$SRC_DIR/sdrplay_api/$(ls x86_64/libsdrplay_api.so*)"
    )
elif [[ $target_platform == linux-aarch64 ]] ; then
    wget "https://www.sdrplay.com/software/SDRplay_RSP_API-ARM64-${sdrplay_api_version}.run"
    7z x "SDRplay_RSP_API-ARM64-${sdrplay_api_version}.run"
    7z x "SDRplay_RSP_API-ARM64-${sdrplay_api_version}"
    cmake_config_args+=(
        -DLIBSDRPLAY_INCLUDE_DIRS="$SRC_DIR/sdrplay_api/inc"
        -DLIBSDRPLAY_LIBRARIES="$SRC_DIR/sdrplay_api/$(ls aarch64/libsdrplay_api.so*)"
    )
elif [[ $target_platform == osx-64 ]] ; then
    wget "https://www.sdrplay.com/software/SDRplayAPI-macos-installer-universal-${sdrplay_api_version}.pkg"
    installer -pkg "SDRplayAPI-macos-installer-universal-${sdrplay_api_version}.pkg"
#     installer -pkg "SDRplayAPI-macos-installer-universal-${sdrplay_api_version}.pkg" -target ./
#     cmake_config_args+=(
#         -DLIBSDRPLAY_INCLUDE_DIRS="$SRC_DIR/sdrplay_api/inc"
#         -DLIBSDRPLAY_LIBRARIES="$SRC_DIR/sdrplay_api/$(ls Applications/SDRplayAPI.app/x86_64/libsdrplay_api.so*)"
#     )
fi

popd

mkdir build
cd build

cmake ${CMAKE_ARGS} -G "Ninja" .. "${cmake_config_args[@]}"
cmake --build . --config Release -- -j${CPU_COUNT}
cmake --build . --config Release --target install

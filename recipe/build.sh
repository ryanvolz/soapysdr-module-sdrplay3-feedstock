#!/usr/bin/env bash

set -ex

mkdir build
cd build

cmake_config_args=(
    -DCMAKE_BUILD_TYPE=Release
    -DLIBSDRPLAY_INCLUDE_DIRS="$SDRPLAY_PREFIX/include"
    -DLIBSDRPLAY_LIBRARIES="$SDRPLAY_PREFIX/lib/libsdrplay_api.so"
)

cmake ${CMAKE_ARGS} -G "Ninja" .. "${cmake_config_args[@]}"
cmake --build . --config Release -- -j${CPU_COUNT}
cmake --build . --config Release --target install

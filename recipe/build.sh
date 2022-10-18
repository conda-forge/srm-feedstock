#!/bin/bash

./configure --prefix="${PREFIX}"
make
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
make test
fi
make install

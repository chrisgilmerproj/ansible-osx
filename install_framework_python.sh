#! /usr/bin/env bash

set -eux -o pipefail

# brew install readline xz openssl

PYENV_ROOT="$(pyenv root)"
VERSION=3.8.5
mkdir -p "${PYENV_ROOT}/versions/${VERSION}"

CFLAGS="-I$(brew --prefix readline)/include -I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include" \
LDFLAGS="-L$(brew --prefix readline)/lib -L$(brew --prefix openssl)/lib" \
CC="clang" \
PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2 --enable-framework=${PYENV_ROOT}/versions/${VERSION}/" \
pyenv install -f "${VERSION}"

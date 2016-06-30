#! /bin/bash

CFLAGS="-I/usr/local/opt/readline/include -I/usr/local/opt/openssl/include -I$(xcrun --show-sdk-path)/usr/include" \
LDFLAGS="-L/usr/local/opt/readline/lib -L/usr/local/opt/openssl/lib -L$(xcrun --show-sdk-path)/usr/lib" \
PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2 --enable-framework CC=clang" \
pyenv install -f 2.7.12

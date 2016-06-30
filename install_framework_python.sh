#! /bin/bash -ex

mkdir -p $(pyenv root)/versions/2.7.12

CFLAGS="-I/usr/local/opt/readline/include -I/usr/local/opt/openssl/include" \
LDFLAGS="-L/usr/local/opt/readline/lib -L/usr/local/opt/openssl/lib" \
CC="clang" \
PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2 --enable-framework=$(pyenv root)/versions/2.7.12/" \
pyenv install -f 2.7.12

# pyenv shell 2.7.12
# pip install numpy scipy matplotlib
# python -c "import matplotlib.pyplot as plt"

# CFLAGS="-I/usr/local/opt/readline/include -I/usr/local/opt/openssl/include -I$(xcrun --show-sdk-path)/usr/include" \
# LDFLAGS="-L/usr/local/opt/readline/lib -L/usr/local/opt/openssl/lib -L$(xcrun --show-sdk-path)/usr/lib" \
# PYTHON_CONFIGURE_OPTS="--enable-unicode=ucs2 --enable-framework CC=clang" \

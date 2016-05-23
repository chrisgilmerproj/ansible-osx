# SSH Configuration

This directory contains a configuration file for SSH.  This is a standard file
like you would find at `~/.ssh/config`.  There are a couple prerequisites to
make this configuration file work for you.  They are described below.

## Keys

The primary way to connect to any host is either with your personal ssh key or
with a `*.pem` file that was provided for that host. Your personal ssh key
should be located at `~/.ssh/id_rsa`.

The remaining `*.pem` files should be located in a subdirectory named
`~/.ssh/keys`.  This will keep your `~/.ssh` directory uncluttered and ensure
you don't check the files into verson control should you be managing your
ssh configurations with git.

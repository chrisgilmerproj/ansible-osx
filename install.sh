#! /bin/bash -e

echo
echo "Install ansible and required python requirements"
sudo pip install -r requirements/python.txt

echo
echo "Install ansible galaxy requirements"
ansible-galaxy install -r requirements/galaxy.yml -p galaxy/

echo
echo "Touch the Ansible Vault secrets file in ~/.vault_pass_local.txt"
echo "You need to copy the password from 1password into this file"
touch ~/.vault_pass_local.txt

if [ ! -d ~/.ssh/keys ] && [ ! -L ~/.ssh/keys ]; then
    echo
    echo "Create a symlink to ~/.ssh/keys -> ~/.ssh"
    ln -s ~/.ssh/keys ~/.ssh
fi
echo

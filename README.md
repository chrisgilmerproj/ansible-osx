# Ansible

This is the repository of ansible configurations. To learn more about ansible
read the docs: http://docs.ansible.com/ansible/

## Warning for Playbooks

If you are not sure that you want to execute a command remotely use the `--check`
which executes a "dry run" of your play.  More information can be found here:
http://docs.ansible.com/ansible/playbooks_checkmode.html

For instance:

```sh
$ ansible-playbook playbooks/localhost.yml --check
```

Then run with:

```sh
$ ansible-playbook playbooks/localhost.yml --diff --ask-sudo-pass
```

## Quickstart

You will need to install Python and Pip to get started.  Then run the install
script:

```sh
$ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
$ sudo python get-pip.py
$ sudo pip install ansible
$ mkdir -p ~/Projects/personal/
$ cd ~/Projects/personal/
$ git clone git@github.com:chrisgilmerproj/ansible.git
$ cd ansible/
$ ./install.sh
```

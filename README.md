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

## Quickstart

You will need to install Python and Pip to get started.  Then run the install
script:

```sh
$ ./install.sh
```

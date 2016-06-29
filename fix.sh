#! /bin/bash -ex

ansible-playbook playbooks/localhost.yml --diff --ask-sudo-pass -vvv

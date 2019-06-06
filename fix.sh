#! /bin/bash -ex

ansible-playbook playbooks/localhost.yml --diff -v --ask-become-pass

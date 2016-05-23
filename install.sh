#! /bin/bash -e

echo "Install ansible and required python requirements"
pip install -r requirements/python.txt

echo "Install ansible galaxy requirements"
ansible-galaxy install -r requirements/galaxy.yml -p galaxy/

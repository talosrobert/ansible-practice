#!/bin/bash

# ansible -b -a "shutdown -r now" feds11
# ansible -b -a "shutdown -r now" feds12

ansible-playbook $HOME/projects/ansible-practice/playbooks/prep.yml
ansible-playbook $HOME/projects/ansible-practice/playbooks/update.yml
ansible-playbook $HOME/projects/ansible-practice/playbooks/selinux.yml

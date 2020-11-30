# ansible-practice
Ansible Practice Repository

## useful links
[Sample EX294 exam](https://www.lisenet.com/2019/ansible-sample-exam-for-ex407/)

## tips

1. Can not use loops for an entire block, it's better to move that entire block of tasks to a separate tasks/handlers file. That way you can take advantage of the loop and iterate over multiple functions.
2. Use mkpasswd when creating passwords. Placing the plain text password string in a vault file won't suffice. The string still needs to be hashed. You can move that hashed string to a vault file later, if you wish.
3. Inside this group_ or host_vars subdirectory, create two files named plan and encrypted variablesm, vars.yml and vault.yml. [Link](https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#keep-vaulted-variables-safely-visible)

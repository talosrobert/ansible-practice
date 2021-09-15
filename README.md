# ansible-practice
Ansible Practice Repository

## useful links
[Sample EX294 exam](https://www.lisenet.com/2019/ansible-sample-exam-for-ex407/)

## tips

1. Can not use loops for an entire block, it's better to move that entire block of tasks to a separate tasks/handlers file. That way you can take advantage of the loop and iterate over multiple functions.
2. ~~Use mkpasswd when creating passwords. Placing the plain text password string in a vault file won't suffice. The string still needs to be hashed. You can move that hashed string to a vault file later, if you wish.~~ The mkpasswd package available in the RHEL 8 Repos, is a rather old one and does not allow setting the hashing method. A much simpler solution is using the jinja2 filtering function password_hash(). [docs](https://docs.ansible.com/ansible/latest/user_guide/playbooks_filters.html#encrypting-and-checksumming-strings-and-passwords)
3. Inside the group_ and host_vars subdirectory, create two files for plain and encrypted variables, named vars.yml and vault.yml. [docs](https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#keep-vaulted-variables-safely-visible)
4. Import is static, include is dynamic. Ansible processes included files and roles as they come up, whereas Ansible pre-processes imported files and roles before it runs any tasks in a playbook. [docs](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse.html#playbooks-reuse),  [forum_discussion](https://serverfault.com/questions/875247/whats-the-difference-between-include-tasks-and-import-tasks)
5. Instead of using jinja2 templating in conditional statements, use the set_fact module to define the condition beforehand. So the warnings won't pop up while runnning playbooks/roles. [github_issue](https://github.com/ansible/ansible/issues/22397)

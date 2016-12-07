# ansible-devstack
Using this codes you can install deploy openstack in Vagrant machine and also its using ansible for deploying Openstack


Required ram is more than 8gb

Tools used:

1. Vagrant - to  create a Virtual Machine for installing devstack in a virtual environment.
2. Ansible - configuration management tool which will install OpenStack(devstack) in Vagrant vm.

example;
ansible-playbook devstack.yml -u "cool" -v --become --ask-become-pass -vvvv


Install 
1. python , python-dev
2. ansible (latest version not from repository)
3. vagrant
4. vagrant box add ubuntu/xenial64
5. git



ToDo list:

Add user stack in ur host machine:
1. adduser stack
2. su stack
3. Better allow sudo permission for stack user
4. Git clone this branch -> git clone <<--link -->>
5. cd ansible-devstack
6. cd init-script


7. To save downloading time of openstack source run repo.sh. By this, u can reuse the same source for various installation
8. to begin your installation run ./init.sh

Help guide:
To get into vagrant running machine
Vagrant ssh opens

Note: default user name and password for the virtual machine is stack - stack
Vagrant machine give more ram >6gb so that it will faster. Else you will face performance issue.
For testing i gave only 4.x gb of ram.

If you face any issue ping me here or mail to cooldharma06@gmail.com



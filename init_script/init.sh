#!/bin/sh

password=stack


echo "Welcome to bigO installer"

echo "Kindly run script as **Stack** user"

u=$USER
dir=$PWD
home=$HOME

if [ $u != "cooldharma06" ] 
then
  echo "Run the script as **stack** user, but you are running as $u"

else

cd $(dirname $dir)


# check whether the box is there or not; if not there enable this command 
#vagrant box add ubuntu/xenial64

vagrant up --provider virtualbox

#file="/home/stack/.ssh/id_rsa.pub" 
file="$home/.ssh/id_rsa.pub"

if [ -f "$file" ]
then
   #echo "file exists"
   ssh-keygen -f "$home/.ssh/known_hosts" -R opens
   rm -rf $home/.ssh/known_hosts
   ssh-copy-id stack@opens
else
   #echo " not found"
   ssh-keygen
   ssh-keygen -f "$home/.ssh/known_hosts" -R opens
   rm -rf $home/.ssh/known_hosts
   ssh-copy-id stack@opens
fi

ansible opens -m ping -u stack

ansible-playbook devstack.yml -u stack

fi

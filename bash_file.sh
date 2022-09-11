#!/bin/bash

echo "Enter user name :"
read user_name
echo "Enter user\'s full name :"
read full_name
echo "Enter user group :"
read group

sudo useradd -m -c  $full_name $user_name
sudo passwd $user_name
sudo usermod -aG $group  $user_name
mkdir $user_name
touch $user_name '/vacations.txt'



#!/bin/bash
# This script can change hostname of a Ubuntu or CentOS machine

# get the OLD_NAME
OLD_NAME=$(hostname)

# define new name
echo "Your current hostanme is: $OLD_NAME"
read -p "Enter new hostname: " NEW_NAME

# edit the /etc/hostname
echo "$NEW_NAME" > /etc/hostname

# replace OLD_NAME by NEW_NAME in /etc/hosts
sed -i "s/$OLD_NAME/$NEW_NAME/g" /etc/hosts

# change hostname
hostname $NEW_NAME

echo "
Type hostname to check the new name.
"

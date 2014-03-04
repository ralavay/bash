#!/bin/bash
# This script can change hostname of a Ubuntu or CentOS machine

# get the OLD_NAME
OLD_NAME=$(hostname)

# define new name
echo "Your current hostanme is: $OLD_NAME"
read -p "Enter new hostname: " NEW_NAME

# have to edit /etc/hostname and /etc/hosts
change_ubuntu(){
  sudo sed -i "s/$OLD_NAME/$NEW_NAME/g" /etc/hostname /etc/hosts
  sudo hostname $NEW_NAME  
}

# edit only /etc/sysconfig/network
change_centos(){
  sudo sed -i "s/$OLD_NAME/$NEW_NAME/g" /etc/sysconfig/network
  sudo hostname $NEW_NAME
}

# /etc/issue contains info about the distro
distro=`cat /etc/issue`

if [[ "$distro" == *Ubuntu* ]]
then
  change_ubuntu
elif [[ "$distro" == *CentOS* ]]
then
  change_centos
else
  cat /etc/issue
fi

echo "
Type hostname to check the new name.
"
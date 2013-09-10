#!/bin/bash
# Some useful way to check which distro you are using.

# Detect using yum or apt-get
if which apt-get >/dev/null
then
  echo "Ubuntu"
elif which yum >/dev/null
then
  echo "CentOS"
fi


# Using /etc/issue
distro=`cat /etc/issue`

if [[ "$distro" == *Ubuntu* ]]
then
  echo "Ubuntu"
elif [[ "$distro" == *CentOS* ]]
then
  echo "CentOS"
else
  cat /etc/issue
fi

# Using /etc/*release
distro=`cat /etc/*release`

if [[ "$distro" == *Ubuntu* ]]
then
  echo "Ubuntu"
elif [[ "$distro" == *CentOS* ]]
then
  echo "CentOS"
else
  cat /etc/*release
fi


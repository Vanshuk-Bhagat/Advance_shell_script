#!/bin/bash
read -p "Enter the Username  " username
read -p "Enter the New Password  " password
echo "$username"
echo "$password"
# Check if user exist
usercheck=$(grep -c "$username" /etc/passwd)
if [ $usercheck -eq 1 ]
then
echo -e "$password/n$password" |passwd $username

else
echo "user not exist"
fi

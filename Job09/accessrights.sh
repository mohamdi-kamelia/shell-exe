#!/bin/bash
 
csv_file=/home/kamelia/Shell_Userlist.csv

 while IFS=, read -r username role

do
    if [ "$role" == "admin" ]; then
        sudo useradd  sudo "$username"
    else
        sudo useradd  "$username"
    fi
    echo "L'utilisateur $username a le rôle $role."

done < "$csv_file"






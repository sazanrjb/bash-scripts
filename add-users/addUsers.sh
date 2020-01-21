#!/bin/bash

cat usersList.txt | while read line;
do

user=($line)
password="$(echo -n "${user[0]}" | sha256sum | head -c 15)"
sudo groupadd -f ${user[1]}
sudo useradd  -d ${user[2]} -g ${user[1]} -c ${user[3]} ${user[0]}
echo ${user[0]}":"$password|sudo chpasswd
echo "Created at " $(date) ": " ${user[0]} ${user[1]} ${user[2]} ${user[3]} $password >> usersOutput.txt
done

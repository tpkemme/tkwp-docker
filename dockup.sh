#!/bin/bash

# insert/update hosts entry
ip_address="127.0.0.1:8000"

host_name=${PWD##*/}.dev
# find existing instances in the host file and save the line numbers
matches_in_hosts="$(grep -n $host_name /etc/hosts | cut -f1 -d:)"
host_entry="${ip_address} ${host_name}"

echo "Please enter your password if requested."

if [ ! -z "$matches_in_hosts" ]
then
    echo "Updating host in /etc/hosts: ${host_entry}"
    # iterate over the line numbers on which matches were found
    while read -r line_number; do
        # replace the text of each line with the desired host entry
        sudo sed -i '' "${line_number}s/.*/${host_entry} /" /etc/hosts
    done <<< "$matches_in_hosts"
else
    echo "Updating host in /etc/hosts:"
    echo "$host_entry" | sudo tee -a /etc/hosts > /dev/null
fi

echo "docker-compose up -d"
docker-compose up -d
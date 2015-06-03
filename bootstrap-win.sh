#!/bin/sh

echo "Bootstrapping time..."
read -e -p "Enter hostname: " host_name
echo "You entered hostname: $host_name"
read -e -p "Enter server role #1 e.g. role[windows] : " role
echo "You entered role: $role"
read -e -p "Enter AD Admin username ('joe.blow'): " username
domain="TRR\\"
domain_username=$domain$username
role2=$role
echo "You entered username: $domain_username"

echo "Bootstrap Time..."
echo "running: knife bootstrap windows winrm $host_name -x '$domain_username' --run-list '$role'"
knife bootstrap windows winrm $host_name -x $domain_username --run-list "$role2" 

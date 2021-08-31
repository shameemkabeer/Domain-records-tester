#!/bin/bash
#author=shxim
#variables
day=$(date +%A)
dom=$1
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)
#greetings
echo -e "${yellow}welcome $USER ! today is $day. \n you are using $SHELL shell for scripting${reset}"
#dns_enumerator
function dns_enumerator
{
for lss in a aaaa cname mx txt; do
echo "${red}$lss of $dom${reset}"${green}
dig $dom $lss +short
echo "${red}**********************Finished********************${reset}"
done
}
dns_enumerator

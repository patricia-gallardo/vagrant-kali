#!/bin/bash

apt -yq update
apt -yq upgrade
apt install -yq curl
apt install -yq dnsrecon
apt install -yq enum4linux
apt install -yq feroxbuster
apt install -yq gobuster
apt install -yq impacket-scripts
apt install -yq nbtscan
apt install -yq nikto
apt install -yq nmap
apt install -yq onesixtyone
apt install -yq oscanner
apt install -yq redis-tools
apt install -yq seclists
apt install -yq sipvicious
apt install -yq smbclient
apt install -yq smbmap
apt install -yq snmp
apt install -yq sslscan
apt install -yq tnscmd10g
apt install -yq wfuzz
apt install -yq whatweb
apt install -yq wkhtmltopdf
apt autoremove

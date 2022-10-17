# Kali Linux Vagrant

Perhaps better than this one: https://github.com/stevemcilwain/Disposable-Kali

## Clean up any previous install

~~~bash
vagrant plugin uninstall vagrant-vbguest
~~~

~~~bash
vagrant halt
vagrant destroy -f
rm -rf .vagrant/
~~~

## Update Kali

~~~bash
vagrant up
vagrant ssh
~~~

In Kali
~~~
sudo apt update
sudo apt upgrade
sudo apt autoremove
~~~

~~~bash
vagrant halt
vagrant up
vagrant ssh
~~~

In Kali
~~~
sudo apt install -y build-essential dkms bzip2 tar linux-headers-`uname -r`
sudo apt install -y --reinstall virtualbox-guest-x11
~~~

~~~bash
vagrant halt
~~~

## Install Guest Additions

~~~bash
sudo apt install virtualbox-guest-additions-iso
~~~

~~~bash
vagrant plugin install vagrant-vbguest
vagrant up
~~~

## Restart

~~~bash
vagrant halt
vagrant up
~~~

CHECK IF
VIEW > AUTO RESIZE GUEST DISPLAY
IS ENABLED

## Install packages and add user

~~~bash
vagrant plugin install vagrant-scp
vagrant scp setup.sh :/tmp/
~~~

~~~bash
vagrant ssh
~~~

In Kali
~~~
cd /tmp
sudo bash setup.sh
sudo adduser <user>
sudo adduser <user> sudo
~~~

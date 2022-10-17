# Kali Linux Vagrant

Perhaps this is better than mine: https://github.com/stevemcilwain/Disposable-Kali

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

## Manual Process (If the above didn't work)

~~~bash
vagrant halt
~~~

In VirtualBox > Storage > Add Optical Drive

Select: VBoxGuestAdditions.iso

Select it in the list, in "Optical Drive" dropdown choose "IDE Secondary device"

~~~bash
vagrant up
vagrant ssh
~~~

In Kali
~~~
sudo adduser <user>
sudo adduser <user> sudo
~~~

Log in as user in Kali window
Double click on drive on desktop

See that View > Auto-resize Guest Display is enabled

~~~bash
vagrant halt
vagrant up
~~~

Log in as user in Kali window
Check that View > Auto-resize Guest Display is enabled

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
~~~

If you haven't added user above
~~~
sudo adduser <user>
sudo adduser <user> sudo
~~~

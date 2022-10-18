# Kali Linux Vagrant

Perhaps this is better than mine: https://github.com/stevemcilwain/Disposable-Kali

## Download

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads)

## Clean up any previous install

~~~bash
vagrant plugin uninstall vagrant-vbguest
~~~

~~~bash
vagrant halt
~~~

~~~bash
vagrant destroy -f
~~~

~~~bash
rm -rf .vagrant/
~~~

## Update Kali

~~~bash
vagrant plugin install vagrant-timezone
~~~

~~~bash
vagrant up
~~~

~~~bash
vagrant plugin install vagrant-scp
~~~

~~~bash
vagrant scp scripts/update_kali.sh :/tmp/
~~~

~~~bash
vagrant ssh --command "cd /tmp && sudo bash update_kali.sh"
~~~

~~~bash
vagrant halt
~~~

## Prep VBox

~~~bash
vagrant up
~~~

~~~bash
vagrant scp scripts/prep_vbox.sh :/tmp/
~~~

~~~bash
vagrant ssh --command "cd /tmp && sudo bash prep_vbox.sh"
~~~

~~~bash
vagrant halt
~~~

## Linux - Get VirtualBox Guest Additions

~~~bash
sudo apt install virtualbox-guest-additions-iso
~~~

## Install Guest Additions

~~~bash
vagrant plugin install vagrant-vbguest
~~~

~~~bash
vagrant up
~~~

~~~bash
vagrant halt
~~~

## Add a user (patricia below)

~~~bash
vagrant up
~~~

~~~bash
vagrant ssh --command "sudo adduser patricia"
~~~

~~~bash
vagrant ssh --command "sudo adduser patricia sudo"
~~~

## Install packages

~~~bash
vagrant scp scripts/setup.sh :/tmp/
~~~

~~~bash
vagrant ssh --command "cd /tmp && sudo bash setup.sh"
~~~

## Test

Log in as the user in the Kali window and make sure View > Auto-resize Guest Display is enabled

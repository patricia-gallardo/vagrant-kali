# Kali Linux Vagrant

Perhaps this is better than mine: https://github.com/stevemcilwain/Disposable-Kali

## Clean up any previous install

~~~bash
vagrant plugin uninstall vagrant-vbguest
vagrant halt
vagrant destroy -f
rm -rf .vagrant/
~~~

## Update Kali

~~~bash
vagrant up
vagrant plugin install vagrant-scp
vagrant scp update_kali.sh :/tmp/
vagrant ssh --command "cd /tmp && sudo bash update_kali.sh"
vagrant halt
~~~

## Prep VBox

~~~bash
vagrant up
vagrant scp prep_vbox.sh :/tmp/
vagrant ssh --command "cd /tmp && sudo bash prep_vbox.sh"
vagrant halt
~~~

## Install Guest Additions

~~~bash
sudo apt install virtualbox-guest-additions-iso
~~~

~~~bash
vagrant plugin install vagrant-vbguest
vagrant up
vagrant halt
~~~

## Add a user (patricia below)

~~~bash
vagrant up
vagrant ssh --command "sudo adduser patricia"
~~~

~~~bash
vagrant ssh --command "sudo adduser patricia sudo"
~~~

## Install packages

~~~bash
vagrant scp setup.sh :/tmp/
vagrant ssh --command "cd /tmp && sudo bash setup.sh"
~~~

## Test

Log in as the user in the Kali window and make sure View > Auto-resize Guest Display is enabled

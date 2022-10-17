Leaving here for now

~~~bash
vagrant plugin install vagrant-scp
vagrant scp /usr/share/virtualbox/VBoxGuestAdditions.iso :/tmp/
vagrant scp vbox_guest_setup.sh :/tmp/
vagrant ssh
~~~

~~~
sudo bash /tmp/vbox_guest_setup.sh
~~~

~~~bash
vagrant halt
~~~

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

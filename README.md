computer-setup
==============

Automation scripts and provisioning configs for new computer setup

When installing on a new computer:

* Clone into ~/.computer-setup

* sudo apt-get install puppet
* cd ~/.computer-setup
* sudo puppet module install puppetlabs/apt
* sudo puppet apply workstation.pp

todo
----

* LastPass-plugin for chrome
* Java JDK

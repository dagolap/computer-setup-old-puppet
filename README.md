computer-setup
==============

Automation scripts and provisioning configs for new computer setup

When installing on a new computer:

* sudo apt-get install puppet
* sudo puppet module install puppetlabs/apt
* sudo puppet module install smarchive/googlechrome
* sudo puppet apply workstation.pp
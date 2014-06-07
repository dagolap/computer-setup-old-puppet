computer-setup
==============

Automation scripts and provisioning configs for new computer setup

When installing on a new computer:

* Clone into ~/.computer-setup
* Install Vundle for vim (TODO: do this from puppet later on)
  * git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* sudo apt-get install puppet
* cd ~/.computer-setup
* sudo puppet module install puppetlabs/apt
* sudo puppet apply workstation.pp

todo
----

* LastPass-plugin for chrome
* Java JDK

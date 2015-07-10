include apt

$user = "dagolap"
$user_group = "dagolap"
$user_realname = "Dag Olav Prestegarden"
$user_email = "dagolav@prestegarden.com"

Package {
  ensure => present 
}

Exec {
  path => [ "/bin", "/usr/bin", "/sbin", "/usr/sbin" ]
}

File {
  owner => "$user",
  group => "$user_group"
}

#####
# Add ppas, anb do it before apt-get update
#####
Apt::Ppa{} -> Exec["apt-update"]
apt::ppa { "ppa:ubuntu-mozilla-daily/firefox-aurora": }

#####
# Add debian repos without using ppa mechanism
#####
Apt::Source{} -> Exec["apt-update"] #Apply all apt source operations before apt-get update

apt::source { 'synapse-core':
  comment  => 'Synapse quick launcher',
  location => 'http://ppa.launchpad.net/synapse-core/ppa/ubuntu',
  release  => 'trusty',
  repos    => 'main',
  key      => {
    'id'     => '3DD99294193A09EF9270EEAFE4010F076C2225A4',
    'server' => 'keyserver.ubuntu.com',
  },
  include  => {
    'src' => true,
    'deb' => true,
  },
}
apt::source { 'nodejs':
  comment  => 'Nodejs and NPM Javascript tools',
  location => 'https://deb.nodesource.com/node_0.12',
  release  => 'vivid',
  repos    => 'main',
  key      => {
    'id'     => '9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280',
    'server' => 'keyserver.ubuntu.com',
  },
  include  => {
    'src' => true,
    'deb' => true,
  },
}

apt::source { 'chrome':
  comment => 'Google Chrome Web Browser',
  location => 'http://dl.google.com/linux/chrome/deb',
  release => 'stable',
  repos => 'main',
  key => {
    'id'     => '4CCA1EAF950CEE4AB83976DCA040830F7FAC5991',
    'server' => 'keyserver.ubuntu.com',
  },
  include => {
    'deb' => true,
    },
}

#####
# Apt-get update before installing anything
####
# Do i really need this?
Exec["apt-update"] -> Package <| |>
exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

#####
# Desktop use
#####
package {["google-chrome-beta", "chromium-browser", "firefox", "synapse"]:} 

#####
# General setup
#####
package {["zsh"]:}

#####
# Developer Tools
#####
# Version Control Systems
package {["git", "mercurial", "bzr"]:}

# Editors
package {["vim-nox", "vim-gtk", "emacs"]:}

# Virtualization
package {["virtualbox", "vagrant"]:}

# Tools
package {["tmux", "mosh"]:}

# Python
package {["python", "python-virtualenv", "virtualenvwrapper"]:}

# Javascript
package {["nodejs"]:}

exec {"install-dotfiles":
  command => "/home/$user/.computer-setup/setup-dotfiles",
  cwd => "/home/$user/.computer-setup",
  logoutput => true,
  timeout => 0,
  user => $user,
  environment => "HOME=/home/$user"
}

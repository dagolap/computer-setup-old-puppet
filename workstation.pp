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
# Add ppas before installing anything
#####
Apt::Ppa{} -> Package <| |>
apt::ppa { "ppa:ubuntu-mozilla-daily/firefox-aurora": }
apt::ppa { "ppa:nilarimogard/webupd8": }

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
package {["chromium-browser", "firefox", "albert"]:} 

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

exec {"install-dotfiles":
  command => "/home/$user/.computer-setup/setup-dotfiles",
  cwd => "/home/$user/.computer-setup",
  logoutput => true,
  timeout => 0,
  user => $user,
  environment => "HOME=/home/$user"
}

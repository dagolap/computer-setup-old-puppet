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
# Desktop use
#####
package {["chromium-browser", "firefox"]:} 

#####
# General setup
#####
package {["zsh"]:}

#####
# Developer Tools
#####
# Version Control Systems
package {["git", "mercurial"]:}

# Editors
package {["vim-nox", "vim-gtk"]:}

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

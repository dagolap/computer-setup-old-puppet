$user = "dagolap"
$user_group = "dagolap"
$user_realname = "Dag Olav Prestegarden"
$user_email = "dagolav@prestegarden.com"

Exec {
  path => [ "/bin", "/usr/bin", "/sbin", "/usr/sbin" ]
}

Package {
  ensure => present
}

File {
  owner => "$user",
  group => "$user_group"
}

#####
# Desktop use
#####
include googlechrome
package { "browsers":
  name => [ "chromium-browser", "firefox" ]
}

#####
# Developer Tools
#####
# Version Control Systems
package { "vcs":
  name => [ "git" ]
}

file { "gitconfig":
  path => "/home/$user/.gitconfig",
  content => "[user]\n\tname = $user_fullname\n\temail = $user_email\n",
}

# Editors
package { "editors":
  name => [ "vim-gtk", "emacs24" ]
}

# Virtualization
package { "virtualization":
  name => [ "virtualbox", "vagrant" ]
}

# Tools
package { "tools":
  name => [ "screen", "mosh" ]
}

# Python
package { "python":
  name => [ "python", "python-virtualenv", "virtualenvwrapper" ]
}



#####
# Dotfiles
#####
exec {
  'install-dot-files':
    command   => "/home/$user/dev/computer-setup/dotfiles/install.sh",
    creates   => "/home/$user/.bootstrapped/dotfiles",
    cwd       => "/home/$user/dev/computer-setup/dotfiles",
    logoutput => true,
    timeout   => 0,
    user      => $user,
    ;
}

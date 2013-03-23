node default {
#  include "tor"
  include "vlc"
  include "vagrant"
  include "spotify"

  exec { "say-hello":
    command => "echo 'HELLO PUPPET!'",
  }

}

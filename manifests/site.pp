node default {
  include "tmux"
  include "tor"
  include "vlc"
  include "vagrant"
  include "spotify"

  package { 'git': }

  package {
    'linux-image-3.2.0-39-generic':
      ensure => present;
    'linux-headers-3.2.0-39-generic':
      ensure => present;
    'linux-image-3.5.0-23-generic':
      ensure => purged;
    'linux-headers-3.5.0-23-generic':
      ensure => purged;
    'linux-image-3.5.0-26-generic':
      ensure => purged;
    'linux-headers-3.5.0-26-generic':
      ensure => purged;
    'linux-generic-lts-quantal':
      ensure => purged;
    'linux-image-generic-lts-quantal':
      ensure => purged;
    'linux-headers-lts-quantal':
      ensure => purged;
    'linux-image-lts-quantal':
      ensure => purged;
    'virtualbox':
      ensure => present;
    'openssh-server':
      ensure => present;
  }

  service { 'ssh':
    ensure => running,
    require => Package['openssh-server'],
  }
}

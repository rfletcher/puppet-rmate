# == Class: rmate
#
# Installs (or removes) rmate
#
# === Parameters
#
# [*ensure*]
#   Possible values: present, absent
#
# [*standalone*]
#   Possible values: true, false
#
# === Examples
#
# Install the official ruby rmate script:
#   include rmate
#
#   class { 'rmate': ensure => present, }
#
# Install the standalone bash version of rmate:
#   class { 'rmate':
#     ensure     => present,
#     standalone => true,
#   }
#
# Uninstall rmate:
#   class { 'rmate': ensure => absent, }
#
# === Authors
#
# Rick Fletcher <fletch@pobox.com>
#
# === Copyright
#
# Copyright 2014 Rick Fletcher
#
class rmate (
  $ensure     = present,
  $standalone = false,
) {
  $file = $standalone ? {
    true    => 'rmate.sh',
    default => 'rmate.rb',
  }

  file { '/usr/local/bin/rmate':
    ensure => $ensure, 
    source => "puppet:///modules/rmate/${file}",
    mode   => '0755'
  }
}

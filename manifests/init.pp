# == Class: rmate
#
# Installs (or removes) rmate
#
# === Parameters
#
# [*ensure*]
#   Possible values: present, absent
#
# === Examples
#
#  class { 'rmate':
#    ensure => 'present',
#  }
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
  $ensure = 'present',
) {
  file { '/usr/local/bin/rmate':
    ensure => $ensure, 
    source => 'puppet:///modules/rmate/rmate.rb',
    mode   => '0755'
  }
}

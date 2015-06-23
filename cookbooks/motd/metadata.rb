name             'motd'
maintainer       'Chris Aumann'
maintainer_email 'me@chr4.org'
license          'GNU Public License 3.0'
description      'Installs/Configures motd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.6.2'
depends          'chef_handler'

%w(ubuntu debian redhat centos scientific amazon fedora).each do |os|
  supports os
end

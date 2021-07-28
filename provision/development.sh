#!/bin/bash

# Kill the  brain dead Vagrant "feature" of pointing FQDN at Localhost
  /bin/sed -i '/127.0.1.1 development.puppetlabs.vm development/d' /etc/hosts

# Stop and disable firewalld
/bin/systemctl stop  firewalld.service
/bin/systemctl disable firewalld.service

# Run the Puppet Agent twice to get Set up with the Server
/opt/puppetlabs/puppet/bin/puppet agent -t || true
/opt/puppetlabs/puppet/bin/puppet agent -t || true

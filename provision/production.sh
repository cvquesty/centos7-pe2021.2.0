#!/bin/bash

# Kill the  brain dead Vagrant "feature" of pointing FQDN at Localhost
  /bin/sed -i '/127.0.1.1 production.puppetlabs.vm production/d' /etc/hosts

# Stop and disable firewalld
/bin/systemctl stop  firewalld.service
/bin/systemctl disable firewalld.service

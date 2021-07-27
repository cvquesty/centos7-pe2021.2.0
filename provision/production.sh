#!/bin/bash

# Stop and disable firewalld
/bin/systemctl stop  firewalld.service
/bin/systemctl disable firewalld.service

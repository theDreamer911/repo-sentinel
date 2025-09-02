#!/bin/bash

# Create directory
mkdir -p sent2
cd sent2

# Download Sentinel Agent and SiteToken
wget https://github.com/theDreamer911/repo-sentinel/raw/refs/heads/main/centos/linux_x86_64_v25_no_arm.rpm
wget https://raw.githubusercontent.com/theDreamer911/repo-sentinel/refs/heads/main/token/sentinelToken269.txt

# Install Sentinel Agent
yum localinstall linux_x86_64_v25_no_arm.rpm

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat sentinelToken269.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start

# Cek status
/opt/sentinelone/bin/sentinelctl management status

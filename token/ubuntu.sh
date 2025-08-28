#!/bin/bash

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent and SiteToken
wget https://github.com/theDreamer911/repo-sentinel/raw/refs/heads/main/ubuntu/amd_linux_agent.deb
wget https://raw.githubusercontent.com/theDreamer911/repo-sentinel/refs/heads/main/token/sentinelToken269.txt

# Install Sentinel Agent
sudo dpkg -i amd_linux_agent.deb

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat sentinelToken269.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start

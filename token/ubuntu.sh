#!/bin/bash

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent and SiteToken
wget https://github.com/theDreamer911/repo-sentinel/raw/refs/heads/main/ubuntu/agent_linux_v25.deb
wget https://raw.githubusercontent.com/theDreamer911/repo-sentinel/refs/heads/main/token/sentinelToken269.txt

# Install Sentinel Agent
sudo dpkg -i agent_linux_v25.deb

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat SiteToken.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start

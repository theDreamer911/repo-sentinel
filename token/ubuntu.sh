#!/bin/bash

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent and SiteToken
wget https://github.com/samphoerna/Sentinel-Repo/raw/main/Linux/SentinelAgent_linux_x86_64_v24_2_1_8.deb
wget https://raw.githubusercontent.com/theDreamer911/repo-sentinel/refs/heads/main/token/sentinelToken269.txt

# Install Sentinel Agent
sudo dpkg -i SentinelAgent_linux_x86_64_v24_2_1_8.deb

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat SiteToken.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start

#!/bin/bash

# Web Penetration Testing Environment Setup Script

# Update and upgrade the system
sudo apt update

# Install essential tools
sudo apt install git python3 python3-pip curl wget -y

# Install and configure web server
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Install and configure database server
sudo apt install mariadb-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Install and configure additional tools
sudo apt install nmap nikto dirb gobuster sqlmap -y

# Install Sublist3r
git clone https://github.com/aboul3la/Sublist3r.git ~/tools/sublist3r
sudo pip3 install -r ~/tools/sublist3r/requirements.txt

# install wafw00f
sudo apt install wafw00f

# Install EyeWitness
git clone https://github.com/FortyNorthSecurity/EyeWitness.git ~/tools/eyewitness
sudo chmod +x ~/tools/eyewitness/Python/setup/setup.sh
sudo ~/tools/eyewitness/Python/setup/setup.sh

# Additional setup steps can be added here based on your requirements

echo "Web Penetration Testing Environment setup complete!"

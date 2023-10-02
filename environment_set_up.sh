#!/bin/bash

# Update package lists and install Nginx
sudo apt update
sudo apt install -y nginx

# Create user_admin user using adduser and set password configurations
sudo adduser --disabled-password user_admin

# Clear the password for the user_admin user (make it empty)
sudo passwd -d user_admin

# Grant user_admin administrative privileges without password prompt
echo "user_admin ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/user_admin

# Create a group named "maintainer"
sudo groupadd maintainer

# Add user_admin and director to the maintainer group
sudo usermod -aG maintainer user_admin
sudo usermod -aG maintainer director

# Create the /opt/archive directory if it doesn't exist
sudo mkdir -p /opt/archive/

# Change ownership of the /opt/archive directory and its contents to the maintainer group
sudo chown -R :maintainer /opt/archive/

# Set permissions for the /opt/archive directory and its contents to allow read, write, and execute by the group
sudo chmod -R 775 

#!/bin/bash

# Update package lists and install Nginx
apt update
apt install -y nginx

# Create user_admin user using adduser and set password configurations
adduser --disabled-password user_admin

# Create director user using adduser
adduser director

# Grant user_admin and director  administrative privileges without password prompt
echo "user_admin ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/user_admin

# Clear the password for the user_admin user (make it empty)
#sudo passwd -d user_admin

# Create a group named "maintainer"
groupadd maintainer

# Add user_admin and director to the maintainer group
usermod -aG maintainer user_admin
usermod -aG maintainer director

# Create the /opt/archive directory if it doesn't exist
mkdir -p /opt/archive/

# Create the output.txt file in the /opt/archive directory and make it owned by director:maintainer
touch /opt/archive/output.txt
chown director:maintainer /opt/archive/output.txt

# Change ownership of the /opt/archive directory and its contents to the maintainer group
chown -R director:maintainer /opt/archive/

# Set permissions for the /opt/archive directory and its contents to allow read, write, and execute by the group
chmod -R 775 /opt/archive/
chmod 664 /opt/archive/output.txt

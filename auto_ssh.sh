#!/bin/bash

# Update package lists
echo "Running apt update"
apt update

# Upgrade installed packages
echo "Running apt upgrade"
apt upgrade -y

# Install SSH server
echo "Installing SSH"
sudo apt install -y ssh

# Enable and start SSH service
echo "Enabling and starting SSH service"
sudo systemctl enable ssh
sudo systemctl start ssh

# Check SSH service status
echo "Checking SSH service status"
sudo systemctl status ssh

# Add 'sftp' group
echo "Adding 'sftp' group"
sudo addgroup sftp

# Add user 'mk1'
echo "Adding user 'mk1'"
sudo adduser mk1

# Add user 'mk1' to 'sftp' group
echo "Adding user 'mk1' to 'sftp' group"
sudo usermod -a -G sftp mk1

# Verify 'sftp' group membership
echo "Verifying 'sftp' group membership"
grep sftp /etc/group

# Create directory for SFTP
echo "Creating SFTP directory"
sudo mkdir -p /var/sftp/Files

# Set ownership and permissions for SFTP directory
echo "Setting ownership and permissions for SFTP directory"
sudo chown root:root /var/sftp
sudo chmod 755 /var/sftp
sudo chown mk1:mk1 /var/sftp/Files

# Edit SSH server configuration file
echo "Editing SSH server configuration file"
sudo nano /etc/ssh/sshd_config

# Add SFTP configuration to SSH server configuration file
echo "Adding SFTP configuration to SSH server configuration file"
echo "
# SFTP configuration
Match User mk1
ChrootDirectory /var/sftp
X11Forwarding no
AllowTcpForwarding no
ForceCommand internal-sftp
" | sudo tee -a /etc/ssh/sshd_config > /dev/null

echo "Script execution completed"
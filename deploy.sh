#!/bin/bash

# Install Apache if not already installed
if ! command -v apache2 &> /dev/null
then
    sudo apt update
    sudo apt install -y apache2
fi

# Copy the index.html to the web server root directory
sudo cp index.html /var/www/html/index.html

# Restart Apache to apply changes
sudo systemctl restart apache2


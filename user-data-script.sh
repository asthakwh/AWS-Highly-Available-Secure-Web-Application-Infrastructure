#!/bin/bash
# Update the package list and install necessary packages
sudo apt-get update -y
sudo apt upgrade -y
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
# Create a simple HTML file to serve as the homepage
echo "<html><body><h1>Welcome to My Web Server</h1></body></html>" | sudo tee /var/www/html/index.html  

sudo systemctl restart apache2

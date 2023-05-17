#!/bin/bash

# Copy files to Nginx web root directory
sudo cp -r /var/lib/jenkins/workspace/java/* /var/www/html

# Adjust file ownership and permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Nginx
sudo service nginx restart

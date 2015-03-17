#!/bin/sh

## php-fpm

echo "Stopping php-fpm..."
sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php*.plist

echo "Starting php-fpm..."
sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php*.plist

echo "php-fpm restarted"

##  mysql

echo "Stopping mysql..."
sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

echo "Starting mysql..."
sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

echo "mysql restarted"


## nginx

echo "Stopping nginx..."
sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

echo "Starting nginx..."
sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

echo "nginx restarted"


exit 0

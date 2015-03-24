#!/bin/sh

## php-fpm

sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php*.plist
sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.php*.plist

echo "php-fpm restarted"

##  mysql

sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

echo "mysql restarted"

## nginx

sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

echo "nginx restarted"

exit 0

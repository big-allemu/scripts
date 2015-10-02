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

## memcached

sudo launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist

echo "memcached restarted"

## dnsmasq

sudo launchctl stop homebrew.mxcl.dnsmasq
sudo launchctl start homebrew.mxcl.dnsmasq

exit 0

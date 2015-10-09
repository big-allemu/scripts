#!/bin/sh

if [ $# -gt 0 ]; then
    pname="$1"
else
    pname="all"
fi

if [ $pname = "php-fpm" -o $pname = "all" ]; then
    echo "Restarting php-fpm..."
    sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php*.plist
    sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.php*.plist
fi

if [ $pname = "mysql" -o $pname = "all" ]; then
    echo "Restarting mysql..."
    sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
    sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
fi

if [ $pname = "nginx" -o $pname = "all" ]; then
    echo "Restarting nginx..."
    sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
    sudo launchctl load -wF ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
fi

if [ $pname = "memcached" -o $pname = "all" ]; then
    echo "Restarting memcached..."
    sudo launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
    sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist
fi

if [ $pname = "dnsmasq" -o $pname = "all" ]; then
    echo "Restarting dnsmasq..."
    sudo launchctl stop homebrew.mxcl.dnsmasq
    sudo launchctl start homebrew.mxcl.dnsmasq
fi

exit 0

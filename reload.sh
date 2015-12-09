#!/bin/sh

command -v brew >/dev/null 2>&1 || { 
    echo >&2 "Homebrew is required but not installed. Aborting."; 
    exit 0;
}

brew tap homebrew/services >/dev/null 2>&1

echo "This script is deprecated. Please use command '$ brew services' instead."

exit 0

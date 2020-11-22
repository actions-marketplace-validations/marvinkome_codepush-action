#!/bin/sh -l

set -e

cd "$1"

if [ -z "$APPCENTER_ACCESS_TOKEN" ]; then
    echo "APPCENTER_ACCESS_TOKEN is required to run commands with the appcenter cli"
    exit 126
fi

echo "PWD $(pwd)"
sh -c "appcenter codepush $2"

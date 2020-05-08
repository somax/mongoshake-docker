#!/bin/bash
set -e

echo "Check config file..."
if [ ! -f config/collector.conf ]; then
    echo "collector.conf not find, copy from collector.example.conf..."
    cp collector.example.conf config/collector.conf
else
    echo "find collector.conf"
fi

echo "Starting mongoshake..."


exec "$@"
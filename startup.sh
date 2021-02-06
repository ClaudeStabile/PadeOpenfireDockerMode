#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
else
       
        #ubuntu fix 
        update-locale
        date > /etc/configured
fi

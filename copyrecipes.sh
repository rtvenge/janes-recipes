#!/bin/bash

#today's date
_now=$(date +"%m_%d_%Y")

#backup
tar -zcf ~/Dropbox/recipes/backups/live_site_backup$_now.tar.gz ~/Dropbox/recipes/html/

#sync to server
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress ~/Dropbox/recipes/html/* janetvenge:/home/janetvenge/janetvenge.com/gittest/
#!/bin/bash

set -o pipefail
set -o errexit

# Echo cronjobs to cron file
CRONFILE="/etc/cron.d/cronsync"
touch $CRONFILE
echo "" >> $CRONFILE
echo "$(cat /resource/cron)" >> $CRONFILE
echo "" >> $CRONFILE

exec /usr/sbin/cron -f

#!/bin/bash -
#===============================================================================
#
#          FILE: offlineimap.sh
#
#         USAGE: ./offlineimap.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Faught (df), derek@derekfaught.com
#  ORGANIZATION:
#       CREATED: 11/13/2013 08:02:06 AM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

echo "Starting run."
date

while [ 1 ]
do
PID=`pgrep offlineimap`

[ -n "$PID" ] && kill $PID     # kill it and resync now

imapfilter -c ~/.imapfilter/config.lua -d ~/pers-filter.log
imapfilter -c ~/.imapfilter/fm-config.lua -d ~/fam-filter.log

offlineimap -o -u Basic

notmuch new

echo "Ending run."
date

sleep 180

echo "Starting run."
date

done
exit 0

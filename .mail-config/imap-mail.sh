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

while [ 1 ]
do
PID=`pgrep offlineimap`

###
# what to do if it's still running? uncomment
# only one of the options below:
###
[ -n "$PID" ] && kill $PID     # kill it and resync now

offlineimap -o -u Basic

#Ok, this isn't imap, but I didn't feel like writing another script...
getmail --rcfile=getmailrc --rcfile=getmailrc-dfaught
sleep 180

done
exit 0

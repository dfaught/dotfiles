#!/bin/bash -
#===============================================================================
#
#          FILE: addcall.sh
#
#         USAGE: ./addcall.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Faught (), derek.faught@rocketgaming.com
#  ORGANIZATION:
#       CREATED: 01/13/2016 12:07
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

REMINDER=$*

RESULT=$(echo "${REMINDER}" | ical2rem-cli)
echo "${RESULT}"

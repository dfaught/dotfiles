#!/usr/bin/env bash

set -o nounset

NAME=$*

RESULT=$(goobook query ${NAME})
echo "${RESULT}"

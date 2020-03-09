#!/bin/bash

FILE=$1
HTML=$(echo "$1" | sed 's/\..*$/\.html/')
libreoffice --headless --convert-to html --outdir /tmp ${FILE}
w3m -I us-ascii -T text/html -dump ${HTML}

#!/bin/bash
#
# Capture and print stdout/stderr, since golint doesn't use proper exit codes
#

for x in $@;
do
    output=`golint $x 2>&1`
    if ! [ -z "$output" ];
    then
       echo $output
       exit 1
    fi
done

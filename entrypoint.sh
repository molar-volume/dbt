#!/bin/sh -l
cd $2
$1
echo "time=$time" >> $GITHUB_OUTPUT

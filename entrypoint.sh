#!/bin/sh -l

$1
echo "time=$time" >> $GITHUB_OUTPUT

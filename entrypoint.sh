#!/bin/sh -l

cd $2

IFS='
'
for command in $1
do
  echo $command
done

echo "time=$time" >> $GITHUB_OUTPUT

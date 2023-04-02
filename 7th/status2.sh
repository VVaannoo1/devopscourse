#!/bin/bash

if pgrep httpd > /dev/null
then

  name=$(pgrep httpd)
  pid=$(pgrep httpd)

  sudo kill -18 $pid
count=1
while [ $count -le 31 ]
do
  echo "process $name $pid suspended #$count"
  sleep 1
  count=$(( $count + 1 ))
done
fi

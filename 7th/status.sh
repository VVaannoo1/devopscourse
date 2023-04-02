#!/bin/bash

if pgrep httpd > /dev/null
then
  sudo systemctl stop httpd

  sleep 10

  if pgrep httpd > /dev/null
  then
    sudo kill -9 $(pgrep httpd)

    name=$(pgrep httpd)
    pid=$(pgrep httpd)

    echo "Process $name $pid stopped with SIGTERM (-9)"
  else
    echo "Process httpd stopped"
  fi

else
  echo "httpd is not running"
fi

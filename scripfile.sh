#!/bin/bash

path="/home/vanek/start/start"

find "$path" -type f -perm /111 > executablefiles.txt

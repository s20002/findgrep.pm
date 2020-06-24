#!/bin/bash

pattern=$1
directory=$2
find . -type f | xargs grep -nH "$pattern"
if [ -z "$directory" ]; then
	directory='.'
fi
find "$direcrory" -type f -print0 | xargs -0 grep -nH "$pattern"

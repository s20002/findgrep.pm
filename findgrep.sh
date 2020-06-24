#!/bin/bash

pattern=$1
directory=$2
name=$3

#find . -type f | xargs grep -nH "$pattern"
if [ -z "$directory" ]; then
	directory='.'
fi
if [ -z "$name" ]; then
	name='*'
find "$direcrory" -type f -print0 | xargs -0 grep -nH "$pattern"

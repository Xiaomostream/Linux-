#!/bin/bash

echo "hello world"

voice="www.xiaomostream.com"

echo $voice

for file in $(ls /home/chan/share/); do
	echo "${file}"
done

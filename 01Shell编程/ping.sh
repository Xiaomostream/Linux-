#!/bin/bash
for i in {1..254}; do
	# ping所有局域网,&>/dev/null表示不用把ping的结果打印屏幕上
	ping -c 2 -i 0.5 192.168.137.$i &>/dev/null
	# $? -eq 0 表示判断是否执行成功
	if [ $? -eq 0 ]; then
		echo "192.168.137.$i is up"
	else
		echo "192.168.137.$i is off"
	fi
done

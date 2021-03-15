#!/bin/bash
#通过位置变量实现自动分区

if [ $# -ne 2 ]; then
	echo -e "\033[91m\t参数有误...\033[0m"
	echo "用法：$0 <磁盘名称> <create | new | remove | query>"
	exit
fi

if [ ! -b $1 ]; then
	echo -e "\033[91m磁盘不存在！\033[0m"
	exit
fi

if [[ $2 == create ]]; then
	parted -s $1 mklabel gpt
elif [[ $2 == new ]]; then
	parted -s $1 mkpart primary 1 100%
elif [[ $2 == remove ]]; then
	parted -s $1 rm 1
elif [[ $2 == query ]]; then
	parted -s $1 print
else
	clear
	echo -e "\033[91m\t操作指令有误....\033[0m"
	echo "可用指令：[create | new | remove | query]"
fi


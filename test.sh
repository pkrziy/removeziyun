#!/bin/bash
read -p “请输入一个正整数：” num
sum=$[num*(num+1)/2]
echo -e "\033[38m$num以内整数的总和是：$sum\033[0m"
read -p "请输入三角形的底边长度：" bottom
read -p "请输入三角形的高度：" hight
A=$(echo "scale=1;1/2*$bottom*$hight" | bc)
echo -e "\033[032m三角形的面积是：$A\033[0m"
read -p "梯形的上底:" a
read -p "梯形的下底:" b
read -p "梯形的高度:" c
A=$(echo "scale=2;($a+$b)*$c/2" | bc)
echo -e "\033[032m梯形的面积: $A\033[0m"
read -p "请输入圆的半径:" r
A=$(echo "scale=2;3.14*$r^2" | bc)
echo -e "\033[32m圆形的面积: $A\033[0m"
read -p "请输入秒数:" sec
ms=$[sec*1000]
echo -e "\033[32m${sec}秒=${ms}毫秒\033[0m"
us=$[sec*1000000]
echo -e "\033[32m${sec}秒=${us}微秒\033[0m"
hour=$(echo "scale=2;${sec}/60/60" | bc)
echo -e "\033[32m${sec}秒=${hour}小时\033[0m"
read -p "请输入要转换的KB:" k
M=$(echo "scale=2,$k/1024" | bc)
echo -e "\033[32m${k}KB等于${M}MB\033[0m"
G=$(echo "scale=2,$k/1024/1024" | bc)
echo -e "\033[32m${k}KB等于${G}GB\033[0m"
最强神话帝皇。

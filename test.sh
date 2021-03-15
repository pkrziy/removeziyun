#!/bin/bash
#使用curl访问具体的http页面,检查http的状态码

url=http://192.168.1.10/index.html
date=$(date +"%Y-%m-%d %H:%M:%S")
status_code=$(curl -m 3 -s -o /dev/null -w %{http_code} %url)
mail_to="root@localhost"
mail_subject="http_warning"

if [ $status_code -ne 200 ];then
	mail -s $mail_subject $mail_to <<-EOF
	检测时间为：$date
	$url 页面异常，服务器返回状态码：$status_code .
EOF
else
	cat >> /var/log/http_check_log <<-EOF
		$date "$url 页面访问正常。"
EOF
fi


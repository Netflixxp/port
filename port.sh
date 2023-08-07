#!/bin/bash

# 检测防火墙是否开启
if systemctl is-active --quiet firewalld.service; then
    echo "防火墙已开启，请手动放行新端口号"
    exit 1
fi

# 读取用户输入的新的SSH端口号
read -p "请输入新的SSH端口号：" new_port

# 备份原来的SSH配置文件
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# 修改SSH配置文件中的端口号
sed -i "s/#Port 22/Port $new_port/g" /etc/ssh/sshd_config

# 重启SSH服务
systemctl restart sshd.service

echo "原22端口已失效,SSH端口已修改为$new_port，请用新端口登录，如无法登录，请检查防火墙是否放行$new_port端口"

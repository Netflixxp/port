#!/bin/bash

# 读取用户输入的新的SSH端口号
read -p "请输入新的SSH端口号：" new_port

# 备份原来的SSH配置文件
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# 修改SSH配置文件中的端口号
sed -i "s/#Port 22/Port $new_port/g" /etc/ssh/sshd_config

# 重启SSH服务
systemctl restart sshd.service

echo "SSH端口已修改为$new_port"

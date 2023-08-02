# 一键更改ssh默认端口的脚本
99%的vps到手，默认都是22端口，再加上有的人root密码极其简单，很容易被暴力破解，成为肉鸡等等。因此最好修改SSH默认的22端口为其它随机端口号。
作为懒到家的我，肯定是一键脚本啊，因此，捣鼓了这个小脚本。
# 功能
自定义端口修改SSH默认的22端口
# 提醒
修改后记得修改防火墙端口，放行你的新SSH端口，装宝塔的也要记得放行。新端口用不了，大概率是防火墙的问题。
# 免责
这个脚本是我自用的脚本，测试的机器和系统有限，难免造成失联等情况，<b>不要用于生成环境、不要用于生成环境、不要用于生成环境</b>。
# 脚本
```shell
bash <(curl -Ls https://raw.githubusercontent.com/Netflixxp/port/main/port.sh)
```
或者
```shell
wget -O port.sh https://raw.githubusercontent.com/Netflixxp/port/main/port.sh && chmod +x port.sh && clear && ./port.sh
```

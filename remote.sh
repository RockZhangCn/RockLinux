#!/bin/bash
#注意修改防火墙上的端口设置问题，要不3340用不了。 gatewayports  for security keep no default value.
# -M autossh 的监听端口。
# -C 压缩传输
# -fn f 在后台执行 n Redirects stdin from /dev/null (actually, prevents reading from stdin).  This # must be used when ssh is run in the background.
# -N 不执行远程shell命令，只进行端口转发。
# -T Disable pseudo-tty allocation.
# -g 最好加g，将公网服务器绑定商品开放给其他计算机，即GatewayPorts yes.
kill -9 `ps aux | grep autossh |grep zhangsh | sed -n '1'p | awk '{print $2}'`
autossh -M 2022 -CfnNT -R 0.0.0.0:3340:localhost:22 rock@m.rockzhang.com &

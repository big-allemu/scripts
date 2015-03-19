# 常用脚本

仅限在公司开发环境下常用的script。将其clone至用户主目录：

`cd ~; git clone git@github.com:tridentdotio/scripts.git; chmod -R 777 scripts`

### install-webserver.sh

安装配置 nginx php-fpm mysql。

### reload-webserver.sh

重启 nginx php-fpm mysql。

### proxy.sh

用SSH账号登录远程VPS服务器建立端口转发隧道，搭配Chrome的SwitchSharp代理切换插件。

### switchyrules.txt

配置SwitchySharp的代理切换规则。

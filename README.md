# 常用脚本

仅限在公司开发环境下常用的script。将其clone至用户主目录：

`cd ~; git clone git@github.com:tridentdotio/scripts.git; chmod -R 777 scripts`

### .vimrc

简单的vim配置文件，执行以下命令使其生效：

```bash
ln -s ~/scripts/.vimrc ~/.vimrc
```

### reload.sh

重启 nginx php-fpm mysql。

### proxy.sh

用SSH账号登录远程VPS服务器建立端口转发隧道，搭配Chrome的SwitchSharp代理切换插件。

执行以下命令加hosts

```bash
sudo sh -c "echo '208.113.171.195 candler.dreamhost.com' >> /etc/hosts"
```

测试是否能能够用私钥成功登陆服务器：

```bash
ssh tridentio@candler.dreamhost.com
```

需要代理的时候手动运行：

```bash
~/scripts/proxy.sh
```

如果没有提示错误信息，则已建立到服务器的SOCKS5代理端口：7171

### switchyrules.txt

配置SwitchySharp的代理切换规则。

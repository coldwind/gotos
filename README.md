# gotos
linux下多服务器自动连接管理工具  
需要配合ssh key免密登录使用
## 使用方式
```
#cd gotos
#make
```
## 所需权限
> root
## 设置IP
vim main.py
```
SERVER_LIST[0]="servername1 username1 ip1"
SERVER_LIST[1]="servername2 username2 ip2"
```
* servername1 显示给用户的服务器名标签
* username1 登录服务器的用户名
* ip1 服务器的IP地址

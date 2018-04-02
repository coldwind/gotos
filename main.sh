#!/usr/bin/bash
SERVER_LIST[0]="servername1 username1 ip1 port1"
SERVER_LIST[1]="servername2 username2 ip2 port2"

flag=0
num=0

echo "|-server list:"
for index in ${SERVER_LIST[@]};do
    if [ 0 -eq $[$flag%4] ]; then
        num=$[$num+1]
        echo -E " |-[$num] "${index}
    fi
    flag=$[$flag+1]
done

echo -e "请输入服务器编号:\c"
read SERVICE_NUM
SERVICE_NUM=$[SERVICE_NUM-1]

if [ ${SERVICE_NUM} -eq -1 ]; then
    echo "服务器编号有误"
fi

# 连接服务器
USER=`echo ${SERVER_LIST[$SERVICE_NUM]} | cut -d ' ' -f 2`
IP=`echo ${SERVER_LIST[$SERVICE_NUM]} | cut -d ' ' -f 3`
PORT=`echo ${SERVER_LIST[$SERVICE_NUM]} | cut -d ' ' -f 4`
connect_expect.sh ${USER} ${IP} ${PORT}

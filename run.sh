#!/bin/sh
<<!
 **********************************************************
 * Author        : lyx926
 * Email         : lyx990926@outlook.com
 * Last modified : 2022-12-25 00:00
 * Filename      : run.sh
 * Description   : 操作容器配置
 * *******************************************************
!
group_name='web'
# application
app_name='backend'
# version
app_version='latest'
echo '[INFO] ------------------------------[ cppy jar ]------------------------------'
docker stop ${app_name}
echo '[INFO] ---------------------------[ stop container ]---------------------------'
docker rm ${app_name}
echo '[INFO] ----------------------------[ rm container ]----------------------------'
docker rmi ${group_name}/${app_name}:${app_version}
echo '[INFO] ------------------------------[ rm image ]------------------------------'
docker build -t ${group_name}/${app_name}:${app_version} .
echo '[INFO] -----------------------------[ build image ]----------------------------'
docker run -p 8081:8080 --restart=always --name ${app_name} \
  -e TZ="Asia/Shanghai" \
  -v /etc/localtime:/etc/localtime \
  -d ${group_name}/${app_name}:${app_version}
echo '[INFO] ---------------------------[ start container ]--------------------------'
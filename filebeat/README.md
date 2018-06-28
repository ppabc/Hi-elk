# Hi-elk

#### 项目介绍
- ![image](https://github.com/ppabc/Hi-elk/raw/master/images/Hi-elk.png)
Hi-elk 是基于Docker快速搭建elk服务镜像，Hi-elk采用Alpine Linux系统为底层,专注于打造最简洁最安全最稳定的elk镜像，实现快速搭建elk服务。


#### 安装filebeat
1. 安装源，编辑这个文件/etc/yum.repos.d/elk.repo

[elasticsearch-5.x]
name=Elasticsearch repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md


2. 安装filebeat命令
yum install -y filebeat


3. 编辑 /etc/filebeat/filebeat.yml配置文件，要对应nginx日志文件路径

filebeat.prospectors:

- input_type: log
  paths:
    - /data/nginx/logs/error.log
  document_type: nginx-error

- input_type: log
  paths:
    - /data/nginx/logs/access.log
  document_type: nginx-access

output.logstash:

  hosts: ["192.168.1.12:5044"]


4. 重启filebeat生效
service  filebeat  restart
					  
					  

#### 参与贡献

1. 如果想分享或是交流的话，请加 QQ 群： 7652650 （安全运维）
2. Email：ppabc@qq.com

#### 微信关注

![image](https://git.oschina.net/aqztcom/kjyw/raw/master/images/aqzt.jpg)




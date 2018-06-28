# Hi-elk

#### 项目介绍
- ![image](https://github.com/ppabc/Hi-elk/raw/master/images/Hi-elk.png)
Hi-elk 是基于Docker快速搭建elk服务镜像，Hi-elk采用Alpine Linux系统为底层,专注于打造最简洁最安全最稳定的elk镜像，实现快速搭建elk服务。


#### nginx 日志格式改为

 log_format  main     '$remote_addr - $remote_user [$time_local] "$request" $http_host '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for" '
                      '"$upstream_addr" "$upstream_status" $upstream_cache_status "$upstream_http_content_type" "$upstream_response_time" > $request_time';
					  
					  

#### 参与贡献

1. 如果想分享或是交流的话，请加 QQ 群： 7652650 （安全运维）
2. Email：ppabc@qq.com

#### 微信关注

![image](https://git.oschina.net/aqztcom/kjyw/raw/master/images/aqzt.jpg)




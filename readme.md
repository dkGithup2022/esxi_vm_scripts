## ESXI  VM 초기화 시 쓰일 스크립트 모음

- java 17
- maven
- prometeous
- node exporter
- elastic search
- mysql
- granpana

</br>


## 네트워크 설정 (git pull 이전에 선행)

1. vim /etc/sysconfig/network-scripts/ifcfg-${네트워크 인터페이스 이름}
onboot = yes 
ipv6 설정 지우기
bootproto = dhcp
systemctl restart network 

```
vi /etc/sysconfig/network-scripts/ifcfg-en192


onboot = yes 
bootproto = dhcp

systemctl restart network 
ip addr

```


</br>


2. 기본 의존성
```
$> yum update -y
$> yum install -y vim net-tools traceroute git wget curl nc 
```


</br>

3. max open files 

```
$> vim /etc/security/limits.conf 
"""
# 파일 아래에 아래 내용 수정 
root hard nofile 500000
root soft nofile 500000

{application} hard nofile 500000
{application} soft nofile 500000

"""


```


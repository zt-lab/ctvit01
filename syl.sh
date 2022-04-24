#!/bin/bash
aa=`free -m |sed -n '2p'|awk '{print ""$3/$2*100"%"}'`
bb=`top -b -n 1 | grep Cpu| awk '{print $2}'`
cc=`df -h |grep /dev/mapper/cl-root |awk '{print $5}'`
dd=`ifconfig |grep "inet"|awk -F "[: ]+" '{print $3}'|head -n1`
ee=`cat /etc/redhat-release |awk '{print $4}'`
if [ $ee == 8 ]; then
     echo -e "服务器地址:$dd \n内存使用率:$aa \ncpu使用率:$bb% \n磁盘使用率:$cc"
fi
if [ $ee == 7 ]; then
     echo -e "服务器地址:$dd \n内存使用率:$aa \ncpu使用率:$bb% \n磁盘使用率:$cc"
fi

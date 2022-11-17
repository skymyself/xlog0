#!/bin/bash
  
  echo "###################"
  echo "查询流量"
  echo "###################"
  xray api statsquery --server=127.0.0.1:10085
  echo "###################"
  echo "###################"
  echo "流量有料请ctrl+c退出!!!"
  echo "否则  10秒 后自动清空流量数据!!!"
  echo "###################"
  echo "###################"

  sleep 10

  : > /var/log/xray/access.log
  : > /var/log/xray/error.log
  
  systemctl restart xray
  sleep 1
  xray api statsquery --server=127.0.0.1:10085
  echo "###########"
  echo "流量数据已清空"

  echo "###################"
  echo "重置日志完成"
  echo "###################"
  echo "检查xray状态"

  systemctl status xray

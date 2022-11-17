#!/bin/bash
  : > /var/log/xray/access.log
  : > /var/log/xray/error.log

  systemctl restart xray
  sleep 1
  xray api statsquery --server=127.0.0.1:10085

  echo "重置日志完成"
  echo ""
  echo "检查xray状态"

  systemctl status xray

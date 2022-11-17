#!/bin/bash
  : > /var/log/xray/access.log
  : > /var/log/xray/error.log

  systemctl restart xray
  sleep 1
  systemctl status xray
  xray api statsquery --server=127.0.0.1:10085

  echo "重置完成"

  exit

#!/bin/bash

# 检查系统架构
ARCH=$(uname -m)

# 根据架构执行命令
if [[ "$ARCH" == "x86_64" || "$ARCH" == "amd64" ]]; then
  echo "Detected AMD64 architecture. Download caddy now."
  sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/files/caddy-linux-amd64 -o /usr/bin/caddy && \
  sudo chmod +x /usr/bin/caddy
  
elif [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
  echo "Detected ARM64 architecture. Download caddy now."
  sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/files/caddy-linux-arm64 -o /usr/bin/caddy && \
  sudo chmod +x /usr/bin/caddy
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi
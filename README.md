
1. 下载程序

:. linux-amd64

```
sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/files/caddy-linux-amd64 -o /usr/bin/caddy && \
sudo chmod +x /usr/bin/caddy
```

:. linux-arm64

```
sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/files/caddy-linux-arm64 -o /usr/bin/caddy && \
sudo chmod +x /usr/bin/caddy
```

2. 下载配置并更新

```
sudo mkdir -p /etc/caddy && \
sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/Caddyfile -o /etc/caddy/Caddyfile && \
sudo chmod 644 /etc/caddy/Caddyfile
```

3. 下载systemctl配置

```
sudo curl -fL https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/caddy.service -o /etc/systemd/system/caddy.service && \
sudo chmod 644 /etc/systemd/system/caddy.service && \
sudo systemctl daemon-reload
```

4. 上传证书和私钥

- 将证书文件改名为 **cert.crt**，将私钥文件改名为 **private.key**，将它们上传到 **/etc/ssl/private/** 目录。

5. 启动程序

```
sudo systemctl enable --now caddy && sleep 0.2 && sudo systemctl status caddy
```

| 项目 | |
| :--- | :--- |
| 程序 | **/usr/bin/caddy** |
| 配置 | **/etc/caddy/Caddyfile** |
| 检查 | `caddy run --environ --config /etc/caddy/Caddyfile` |
| 查看日志 | `journalctl -u caddy --output cat -e` |
| 实时日志 | `journalctl -u caddy --output cat -f` |

[**客户端配置示例**](https://raw.githubusercontent.com/fy-deng/naiveproxy-install/main/client.json)

```
curl -sLo go.tar.gz https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
#curl -sLo go.tar.gz https://go.dev/dl/go1.20.3.linux-arm64.tar.gz
tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz
echo -e "export PATH=$PATH:/usr/local/go/bin" > /etc/profile.d/go.sh
source /etc/profile.d/go.sh
go version
```


安装NaïveProxy＋Caddy

```
go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
~/go/bin/xcaddy build --with github.com/caddyserver/forwardproxy@caddy2=github.com/klzgrad/forwardproxy@naive
setcap cap_net_bind_service=+ep ./caddy
```


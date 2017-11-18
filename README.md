# Deploy Transparent Gateway with Shadowsocks
----------
## Resolve DNS polution
* Install ChinaDNS

  Refer the [Install Guide](https://github.com/shadowsocks/ChinaDNS/)
  - Download a ChinaDNS [release](https://github.com/shadowsocks/ChinaDNS/releases)
  - Build ChinaDNS
  - Copy the built chinadns binary file to /usr/local/bin/chinadns
  - Copy the chinadns bash script to /etc/init.d/

* Install dnsmasq
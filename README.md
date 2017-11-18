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
  - Run command to install dnsmasq
    ```
    sudo apt-get install dnsmasq
    ```
  - modify /etc/dnsmasq.conf
    ```
    no-resolv
    server=127.0.0.1#5354
    ```

## Set up Shadowsocks
* Install/Configure shadowsocks-libev
  
  Refer the [Install Guide](https://github.com/shadowsocks/shadowsocks-libev/blob/master/README.md)
  - For Ubuntu 14.04, run  
    ```
    sudo apt-get install software-properties-common -y
    sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
    sudo apt-get update
    sudo apt install shadowsocks-libev
    ```
  - Copy the config.123.123.123.123.json to /etc/shadowsocks-libev 

## Set up iptables
* Generate ipset
  ```
  ./generae_ipset.sh
  ```

## Start shadowsocks service
  - replace 'passphase' with your own password in load.sh
    ```
    sudo ./load.sh -i 123.123.123.123
    ```

service chinadns stop
service dnsmasq stop
./flushiptable.sh
ipset destroy cidr_cn
pkill ss-redir
pkill ss-tunnel
iptables -t nat -F shadowsocks
iptables -t nat -F OUTPUT
iptables -t nat -F PREROUTING
iptables -t nat -X shadowsocks

while getopts "i:" arg
do
	case $arg in
		i)
			ip=$OPTARG
	esac
done

service chinadns restart
service dnsmasq restart
./flushiptable.sh
./routegwset.sh
ipset destroy cidr_cn
ipset restore < /etc/ipset.cidr_cn.rules
./iptables.sh -i $ip
CONFIGFILE="/etc/shadowsocks-libev/config.$ip.json"
echo $CONFIGFILE
pkill ss-redir
pkill ss-tunnel
nohup ss-redir -c $CONFIGFILE &
nohup ss-tunnel -s $ip -p 8388 -b 0.0.0.0 -l 5300 -k passphase -m aes-256-cfb -L 8.8.8.8:53 -u &

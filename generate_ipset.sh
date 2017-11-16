rm cidr_cn
curl -sL http://f.ip.cn/rt/chnroutes.txt | egrep -v '^$|^#' > cidr_cn
sudo ipset destroy cidr_cn
sudo ipset -N cidr_cn hash:net
rm ipset.sh
for i in `cat cidr_cn`; do echo ipset -A cidr_cn $i >> ipset.sh; done
chmod +x ipset.sh && sudo ./ipset.sh
rm ipset.cidr_cn.rules
sudo ipset -S > ipset.cidr_cn.rules
sudo cp ./ipset.cidr_cn.rules /etc/ipset.cidr_cn.rules

sudo apt-get install vim -y
sudo echo "net.ipv6.conf.all.forwarding = 1" >> /etc/sysctl.conf
sudo sysctl -p
sudo apt-get install radvd -y
cd /etc
sudo touch radvd
sudo echo '
  interface eth0
{
    AdvSendAdvert on;
    AdvOtherConfigFlag on;
    AdvManagedFlag on;
    MinRtrAdvInterval 10;
    MaxRtrAdvInterval 15;
    AdvDefaultPreference medium;
    AdvDefaultLifetime 45;
    prefix 2001:db8::/64{
        AdvOnLink on;
        AdvAutonomous on;
        AdvRouterAddr off;
    };

    #配置DNS
    RDNSS 2001:db8:1:0::1
    {
        AdvRDNSSPreference 8;
        AdvRDNSSLifetime 180;
    };
};
' > radvd
sudo /etc/init.d/radvd restart
sudo apt-get install wide-dhcpv6-server
sudo echo '
   option domain-name-servers 2001:db8::35;
   host kame {
        duid 00:01:00:01:aa:bb;
        prefix 2001:db8:1111::/48 infinity;
    };
	interface eth0 {
        address-pool pool1 3600;
    };
    pool pool1 {
        range 2001:db8:1:2::1000 to 2001:db8:1:2::2000 ;
    };
' > /usr/share/doc/wide-dhcpv6-server/examples/dhcp6s.conf.sample
sudo cp /usr/share/doc/wide-dhcpv6-server/examples/dhcp6s.conf.sample /etc/wide-dhcpv6/dhcp6s.conf
sudo /etc/init.d/wide-dhcpv6-server restart





## debian based

`sudo vim /etc/network/interfaces.d/60-my-floating-ip.cfg`

*IPv4*

```
 auto eth0:1
 iface eth0:1 inet static
     address your.Float.ing.IP
     netmask 32
```

*IPv6*

```
 auto eth0:1
 iface eth0:1 inet6 static
     address eine IPv6 Adresse aus dem Subnetz, z.B. 2a01:4f9:0:2a1::2
     netmask 64
```

restart network

`sudo service networking restart`



## ubuntu 20.04

`sudo vim /etc/netplan/60-floating-ip.yaml`

*IPv4*

```
    network:
       version: 2
       renderer: networkd
       ethernets:
         eth0:
           addresses:
           - your.float.ing.ip/32
```

*IPv6*

```
    network:
       version: 2
       renderer: networkd
       ethernets:
         eth0:
           addresses:
           - your.float.ing.ip/64
```


restart network 

`sudo netplan apply`

## RHEL based

`sudo vim /etc/sysconfig/network-scripts/ifcfg-eth0:1`

*IPv4*

```
 BOOTPROTO=static
 DEVICE=eth0:1
 IPADDR=your.Float.ing.IP
 PREFIX=32
 TYPE=Ethernet
 USERCTL=no
 ONBOOT=yes
```

*IPv6*

```
 BOOTPROTO=none
 DEVICE=eth0:1
 ONBOOT=yes
 IPV6ADDR=eine IPv6 Adresse aus dem Subnetz, z.B. 2a01:4f9:0:2a1::2/64
 IPV6INIT=yes
```

restart network

`systemctl restart network`


## temporary

`sudo ip addr add FLOATING_IP dev eth0`

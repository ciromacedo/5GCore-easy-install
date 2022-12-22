#!/bin/sh

### N3iwf IPSec tunnel configuration

#ip l add name ipsec0 type vti local 172.16.10.5 remote 0.0.0.0 key 5
#ip l add name ipsec0 type vti local core-free5gc-n3iwf-n3iwf-0 remote 0.0.0.0 key 5
ip link add name ipsec0 type vti local $(hostname -i | awk '{print $1}') remote 0.0.0.0 key 5
ip a add 10.0.0.1/24 dev ipsec0
ip l set dev ipsec0 up

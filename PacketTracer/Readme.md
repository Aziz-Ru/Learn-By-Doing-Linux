# Cisco Packet Tracer

## Making vlan and trunk
```
enable
configure terminal
interface range fastEthernet 0/1-2
switchport mode access
switchport acess vlan 10
exit

interface range fastEthernet 0/3-4
switchport mode access
switchport acess vlan 20
exit

interface fastEthernet 0/5
switchport mode trunk
exit
```

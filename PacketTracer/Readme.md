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

## Making inter router communication 

### Router configuration
```
enable
configure terminal
interface gigabitEthernet 0/0
no shutdown
exit

interface gigabitEthernet 0/0.10
encapsulation dot1Q 10
ip address 192.168.10.1 255.255.255.0
no shutdown
exit

interface gigabitEthernet 0/0.20
encapsulation dot1Q 20
ip address 192.168.20.1 255.255.255.0
no shutdown
exit

```












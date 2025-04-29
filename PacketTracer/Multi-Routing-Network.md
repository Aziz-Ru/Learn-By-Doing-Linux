# Multi Routing Network


## Router 0 configuration

```
en
conf t

interface gigabitEthernet 0/1
ip address 10.0.0.2 255.0.0.0
no shutdown
exit

interface gigabitEthernet 0/2
ip address 11.0.0.2 255.0.0.0
no shutdown 
exit
```

## Router 1 configuration


```
en
conf t

interface gigabitEthernet 0/0
ip address 192.168.0.1 255.255.255.0
no shutdown
exit

interface gigabitEthernet 0/1
ip address 10.0.0.1 255.0.0.0
no shutdown 
exit
```

## Router 2 configuration

```
en
conf t

interface gigabitEthernet 0/0
ip address 172.16.0.1 255.255.0.0
no shutdown
exit

interface gigabitEthernet 0/2
ip address 11.0.0.1 255.0.0.0
no shutdown 
exit
```

## Static Routing

### Rules
```
ip route destinationIp destinationMusk nextHop
```
### Router 0

```

Router(config)#ip route 172.16.0.0 255.255.0.0 11.0.0.1
Router(config)#ip route 192.168.0.0 255.255.255.0 10.0.0.1
```
### Router 1
```
ip route 172.16.0.0 255.255.0.0 10.0.0.2
```
### Router 2

```
ip route 192.168.0.0 255.255.255.0 11.0.0.2
```






























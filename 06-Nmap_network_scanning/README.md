# Project 6 – Nmap Network Scanning

## Overview

This project demonstrates the use of Nmap to perform network discovery, port scanning, service enumeration, operating system detection, UDP scanning, and basic NSE (Nmap Scripting Engine) usage.

The project was completed in an Ubuntu virtual machine as part of my cybersecurity portfolio.

---

## Objectives

- Install Nmap
- Perform TCP port scanning
- Scan specific ports
- Detect service versions
- Detect operating systems
- Perform aggressive scans
- Scan UDP services
- Use Nmap Scripting Engine (NSE)
- Interpret scan results

---

## Environment

- Ubuntu 26.04 LTS
- OpenSSH Server
- Nmap 7.98
- Virtual Machine

---

## Commands Used

### Install Nmap

```bash
sudo apt install nmap
```

### Basic Scan

```bash
nmap 192.168.64.3
```

### Version Detection

```bash
nmap -sV 192.168.64.3
```

### OS Detection

```bash
sudo nmap -O 192.168.64.3
```

### Aggressive Scan

```bash
sudo nmap -A 192.168.64.3
```

### UDP Scan

```bash
sudo nmap -sU -p 53,123,161 192.168.64.3
```

### NSE Script

```bash
sudo nmap --script ssh-hostkey -p 22 192.168.64.3
```

---

## Findings

### TCP Scan

Discovered:

- Port 22 (SSH)

### Version Detection

Identified:

- OpenSSH 10.2p1
- Ubuntu Linux

### OS Detection

Nmap correctly identified the target as a Linux operating system.

### UDP Scan

Scanned:

- DNS (53)
- NTP (123)
- SNMP (161)

All three ports were closed.

### NSE

Executed the `ssh-hostkey` NSE script to demonstrate the use of Nmap's scripting engine.

---

## Skills Demonstrated

- Network reconnaissance
- TCP scanning
- UDP scanning
- Service enumeration
- Operating system fingerprinting
- Port analysis
- Nmap Scripting Engine (NSE)
- Linux command line
- Security analysis

---

## Screenshots

Screenshots showing each stage of the project are available in the `screenshots/` folder.

---

## Key Takeaways

- Learned the difference between TCP and UDP scanning.
- Identified open services using Nmap.
- Performed service and operating system detection.
- Explored the Nmap Scripting Engine for service enumeration.
- Practised analysing scan results and troubleshooting script behaviour.

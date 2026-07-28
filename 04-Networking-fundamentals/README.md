# Project 4: Linux Networking Fundamentals

## Objective

The objective of this project was to understand how computers communicate over a network and to investigate network connectivity issues using common Linux networking tools. The project focused on identifying connectivity, DNS, routing, listening services, and web server responses.

---

## Skills Practiced

- Understanding IP addressing
- Private vs Public IP addresses
- Network Address Translation (NAT)
- Routing
- DNS resolution
- HTTP troubleshooting
- Network service investigation
- Linux networking commands
- Basic SOC troubleshooting methodology

---

## Commands Used

### Display network interfaces

```bash
ip a
```

### Display the routing table

```bash
ip route
```

### Test internet connectivity

```bash
ping -c 4 8.8.8.8
```

### View listening network services

```bash
ss -tuln
```

### View listening services and owning processes

```bash
sudo ss -tulpn
```

### Resolve a domain name

```bash
nslookup google.com
```

### Install curl

```bash
sudo apt update
sudo apt install curl
```

### Verify curl installation

```bash
curl --version
```

### Retrieve a web page

```bash
curl http://example.com
```

### View HTTP response headers

```bash
curl -I http://example.com
```

---

## Investigation Performed

A simulated user reported that a website could not be accessed.

The following troubleshooting process was used:

1. Verified internet connectivity using `ping`.
2. Verified DNS resolution using `nslookup`.
3. Tested the web server using `curl`.
4. Interpreted HTTP status codes to determine whether the issue was related to connectivity or server permissions.

---

## Findings

- Internet connectivity was working correctly.
- DNS successfully resolved domain names.
- The routing table identified the default gateway.
- Active listening services were identified using `ss`.
- Running `sudo ss -tulpn` revealed which processes owned each listening port.
- `curl` was used to communicate directly with a web server.
- HTTP status codes such as **200 OK**, **403 Forbidden**, and **404 Not Found** were interpreted during troubleshooting.

---

## What I Learned

During this project I learned:

- How private and public IP addresses differ.
- How routers perform Network Address Translation (NAT).
- How Linux chooses where to send network traffic using the routing table.
- How to identify listening network services.
- How ports identify applications rather than computers.
- How DNS translates domain names into IP addresses.
- How to use `curl` to interact directly with web servers.
- How HTTP status codes help troubleshoot website issues.
- How to investigate connectivity problems using a structured troubleshooting process.

---

## Key Takeaway

This project taught me that effective troubleshooting follows a logical sequence rather than guessing. By checking connectivity, DNS resolution, routing, and web server responses step by step, I was able to identify where a problem existed using evidence instead of assumptions.

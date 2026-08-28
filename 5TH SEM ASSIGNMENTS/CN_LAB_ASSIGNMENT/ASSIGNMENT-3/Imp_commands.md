# 🌐 Important Linux Networking Commands
> **Computer Networks Lab — Assignment 3**

A quick reference guide for essential Linux networking CLI utilities, inspection tools, and diagnostic commands.

---

## 📋 Quick Reference Table

| Command | Category | Description | Common Usage |
| :--- | :--- | :--- | :--- |
| `ip addr` / `ip a` | Interface Config | Displays active IP addresses & interface properties | `ip a` |
| `hostname` | Host Info | Prints system's host name identification string | `hostname` |
| `hostname -i` | Host Info | Shows local loopback/resolvable IP address | `hostname -i` |
| `hostname -I` | Host Info | Lists all globally reachable IP addresses | `hostname -I` |
| `ping` | Diagnostics | Tests reachability & packet round-trip time | `ping google.com` |
| `ip route` | Routing | Displays the kernel's active IP routing table | `ip route show` |
| `ip link` | Link Layer | Shows operational state and MAC/link parameters | `ip link show` |
| `ss` | Socket Stats | Dumps active socket statistics & open ports | `ss -tuln` |

---

## 🛠️ Detailed Command Breakdown

### 1. `ip addr` (or `ip a`)
Displays assigned IPv4/IPv6 addresses, subnet masks, and configuration properties across all network interfaces.

```bash
# View IP addresses for all interfaces
ip addr

# View IP address for a specific interface (e.g., eth0)
ip addr show eth0
```

---

### 2. `hostname`
Prints or modifies the system's host name identification string.

```bash
# Print system hostname
hostname
```

---

### 3. `hostname -i` vs `hostname -I`

- **`hostname -i`**: Displays the IP address that the host name resolves to (often the loopback address `127.0.0.1` or local binding).
- **`hostname -I`**: Displays all host's configured network IP addresses across active network interfaces.

```bash
# Display loopback / local IP
hostname -i

# Display all network IP addresses (space-separated)
hostname -I
```

---

### 4. `ping`
Sends ICMP ECHO_REQUEST packets to verify end-to-end network connectivity and measure latency.

```bash
# Ping a remote host or IP (e.g., 4 packets)
ping -c 4 8.8.8.8
```

> [!TIP]
> In Linux, `ping` runs indefinitely by default. Use `-c <count>` to specify the number of packets to send.

---

### 5. `ip route`
Displays the kernel's active IP routing table used to direct outbound traffic to local subnets or gateways.

```bash
# View current routing table
ip route
```

---

### 6. `ip link`
Inspects and manages the operational status (UP/DOWN), MTU, and MAC address of network interfaces at the data link layer (Layer 2).

```bash
# Display all network link states and MAC addresses
ip link
```

---

### 7. `ss` (Socket Statistics)
A modern and faster alternative to `netstat`. Used to inspect open network ports, established TCP/UDP connections, and socket metrics.

```bash
# List all listening TCP & UDP ports in numeric format
ss -tuln

# View all active socket connections with process names
ss -tulpn
```

> [!NOTE]
> `ss` replaces legacy commands like `netstat` and provides faster socket inspection directly from kernel space.

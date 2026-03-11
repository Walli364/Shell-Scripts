# Shell-Scripts

A collection of useful shell scripts for Linux server administration.

---

## server-stats.sh

A simple bash script to monitor Linux server performance metrics at a glance.

### Purpose

This script provides a quick overview of your server's resource utilization, useful for:
- Routine server health checks
- Identifying resource bottlenecks
- Monitoring system performance
- Troubleshooting high CPU or memory usage

### What It Does

| Metric | Description |
|--------|-------------|
| **CPU Usage** | Shows current CPU utilization percentage |
| **Memory Usage** | Displays RAM usage as a percentage |
| **Disk Usage** | Reports root partition disk space (used/total) |
| **Top 5 CPU Processes** | Lists processes consuming the most CPU |
| **Top 5 Memory Processes** | Lists processes consuming the most RAM |

### Usage

```bash
chmod +x server-stats.sh
./server-stats.sh
```

### Requirements

- Linux-based system
- Standard utilities: `top`, `free`, `df`, `ps`, `awk`

### Sample Output

```
cpu usage
Memory Usage: 45.23%
disk usage
Disk Usage: 15G/50G (30%)
top 5 processes by cpu
  PID  PPID CMD                         %CPU
 1234  1000 /usr/bin/python3             12.5
  ...
top 5 processes by memory
  PID  PPID CMD                         %MEM
 5678  1000 /usr/bin/java                 8.2
  ...
```
## Project URL
https://roadmap.sh/projects/server-stats
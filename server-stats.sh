echo "cpu usage"
top -bn1 | grep "Cpu(s)" | \

echo "memory usage"
free -m | awk '/Mem:/{printf "Memory Usage: %.2f%%\n",$3, $2, $3*100/$2 }'

echo "disk usage"
df -h / | awk 'NR==2 { printf "Disk Usage: %s/%s ( %s )\n", $3, $2, $5 }'

echo "top 5 processes by cpu"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

echo "top 5 processes by memory"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
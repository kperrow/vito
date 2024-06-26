echo "load:$(uptime | awk -F'load average:' '{print $2}' | awk -F, '{print $1}' | tr -d ' ')"
echo "memory_total:$(free -k | awk 'NR==2{print $2}')"
echo "memory_used:$(free -k | awk 'NR==2{print $3}')"
echo "memory_free:$(free -k | awk 'NR==2{print $7}')"
echo "disk_total:$(df -BM / | awk 'NR==2{print $2}' | sed 's/M//')"
echo "disk_used:$(df -BM / | awk 'NR==2{print $3}' | sed 's/M//')"
echo "disk_free:$(df -BM / | awk 'NR==2{print $4}' | sed 's/M//')"

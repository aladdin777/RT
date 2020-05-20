FROM nginx
run apt update 
run apt install openssh-server -y
run service ssh start
run echo "<html><head><title>PC Info site</title></head><body>" > /usr/share/nginx/html/index.html
run cat /proc/cpuinfo | grep processor| awk '{print "Cores total number "  FNR}'|tail -1  >> /usr/share/nginx/html/index.html
run echo "<br>" >> /usr/share/nginx/html/index.html
run df -h | grep "^/dev/sd*" >> /usr/share/nginx/html/index.html
run echo "<br>" >> /usr/share/nginx/html/index.html
run cat /proc/meminfo | grep "MemTotal:" >> /usr/share/nginx/html/index.html
run echo "<br>" >> /usr/share/nginx/html/index.html
run cat /proc/meminfo | grep "MemFree:" >> /usr/share/nginx/html/index.html
run echo "<br>" >> /usr/share/nginx/html/index.html
run cat /proc/meminfo | grep "MemAvailable:" >> /usr/share/nginx/html/index.html
run echo "<p><em>Thank you, Bye</em></p></body></html>" >> /usr/share/nginx/html/index.html


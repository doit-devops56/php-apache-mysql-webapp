set timeout 120
set host [lindex $argv 0]
send_user "host: $host\n"
spawn ssh -o StrictHostKeyChecking=no ubuntu@$host "git clone https://github.com/doit-devops56/php-apache-mysql-webapp.git; cd php-apache-mysql-webapp; docker compose -f compose.yml up -d"
expect "ubuntu*\ password:"
send -- "changeme\r"
# sleep 5
# send -- "ls /\r"
# sleep 10
# send -- "exit\r"
expect eof
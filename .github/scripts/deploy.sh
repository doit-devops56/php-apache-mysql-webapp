<<<<<<< HEAD
#!/usr/bin/expect -f
=======
#!/usr/bin/expect -f
>>>>>>> 8eb7e9c4ba84ddaa319da4c90186d786c54fd2f4
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
<<<<<<< HEAD
expect eof
=======
expect eof
>>>>>>> 8eb7e9c4ba84ddaa319da4c90186d786c54fd2f4

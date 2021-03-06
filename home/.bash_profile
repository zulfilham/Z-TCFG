#!/data/data/com.termux/files/usr/bin/bash

# Initial setup
{ pidof sshd || sshd -p 8022; } &> /dev/null;  # Starting ssh daemon if it's installed
{ pidof crond || crond; } &> /dev/null;        # Starting cron daemon if it's installed

for filename in ~/.{export,aliases,auto_completion,bash_prompt,functions}; do
   if [ -r "$filename" ]; then
      source "$filename";
   fi;
done;

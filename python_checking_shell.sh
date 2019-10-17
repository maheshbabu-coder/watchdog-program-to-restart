#!/bin/bash
SERVICE="python"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped restarting it"
    python /home/iiot/temp/processdata_http_v3.py 
    # uncomment to start nginx if stopped
    # systemctl start nginx
    # mail  
fi

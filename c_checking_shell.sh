#!/bin/bash
SERVICE="a.out"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped restarting it"
    /etc/cas_app/ADC/Adc_Appv1.0.1/src/./ADC
    # uncomment to start nginx if stopped
    # systemctl start nginx
    # mail  
fi


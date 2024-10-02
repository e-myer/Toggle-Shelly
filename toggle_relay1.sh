#! /usr/bin/bash

shelly_ip=YOUR_SHELLY_IP_ADDRESS

wget -q -O/dev/null "http://$shelly_ip/relay/1?turn=toggle"
sleep 2

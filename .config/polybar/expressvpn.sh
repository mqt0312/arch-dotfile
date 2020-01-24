#!/bin/bash

IS_CONNECTED=""
NOT_CONNECTED="￦"
VPN_STATUS="$(expressvpn status 2>&1 | grep -c "Connected to")";
REAL_IP="$(timeout 3 curl -s ifconfig.me)"
if [ $((VPN_STATUS)) = 1 ]; then	
	echo "$IS_CONNECTED $REAL_IP" 
else
	echo "$NOT_CONNECTED $REAL_IP"
fi

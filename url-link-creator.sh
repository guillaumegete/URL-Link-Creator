#!/bin/bash

consoleuser=$(stat -f%Su /dev/console)

sudo -u "$consoleuser" 
cd ~/Desktop || exit 1

if [ -f "$4.url" ]; then

	osascript -e 'display dialog "This link already exists ! Delete it from your Desktop, then run the policy again." buttons "OK" default button 1'
	exit 1
else
	echo "[InternetShortcut]
URL=$5" > "$4.url"
	
fi

exit 0

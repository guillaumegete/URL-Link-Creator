#!/bin/bash

consoleuser=$(stat -f%Su /dev/console)

sudo -u "$consoleuser" 
cd ~/Desktop || exit 1

if [ -f "$4.url" ]; then

	osascript -e 'display dialog "Ce lien existe déjà ! Supprimez le lien existant du Bureau puis relancez cette règle pour le régénérer" buttons "OK"'
	exit 1
else
	echo "[InternetShortcut]
URL=$5" > "$4.url"
	
fi

exit 0

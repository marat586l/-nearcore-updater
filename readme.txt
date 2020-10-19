The script is written in BASH
Checks for new versions of nearcore for the betanet network and the nestnet network (detected automatically) and, if a new version appears on GitHUB,
 it is compiled and node switched to the new version. The old version remains in the nearcore.bak file.
You can run the script from the console yourself, or you can use SYSTEMD in the background upon a timer. To do this, createed a service unit and a timer
 unit and placed them in /etc/systemd/system/
Script writes logs in update.log. If it works as systemd service logs are may to see in journalctl 

You can additionally receive script's messages in the telegram messenger from telegram bot with the name sendmess_111_bot. To do this, you need to get 
your telegramID using for example @my_id_bot and write this value to the config file in the same directory. The script checks for the presence of 
this file and, if present, duplicates messages in telegram chanel.
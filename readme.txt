The script is written in BASH
Checks for new versions of nearcore for the betanet network and the testnet network (network detected automatically) and, if a new version appears on GitHUB,
it is compiled and node switched to the new version. The old version remains in the nearcore.bak file.

There are 2 variants to start this script:
1.You can run the script from the console at any time by move to the directory where the updt.bh script is placed and run  ./updt.bh  command.
2.You can use systemd service to run the script in the background on a timer.
To do this you need to create 2 files updt.service and updt.timer and placed them in /etc/systemd/system/
More information about this can be found in the file updt.timer.txt
  
Script writes logs in update.log file which is generated in the same directory where the script is run from. 
If script works as systemd service in the background logs are may to see in journalctl as well

You can additionally receive script's messages in the telegram messenger from telegram bot with the name sendmess_111_bot. For used this option, 
you need to get your telegramID using for example @my_id_bot and write this value to the config file in the same directory where the main script 
are placed, and add the sendmess_111.sh script to the same directory where the main script updt.bh.
The script checks for the presence of config file and if present duplicates messages in telegram chanel.

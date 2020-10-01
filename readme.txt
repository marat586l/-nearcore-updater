The script is written in BASH
Checks for new versions of nearcore for the betanet network and the nestnet network (detected automatically) and, if a new version appears on GitHUB,
 it is compiled and node switched to the new version. The old version remains in the nearcore.bak file.
You can run the script from the console yourself, or you can use SYSTEMD in the background upon a timer. To do this, createed a service unit and a timer
 unit and placed them in /etc/systemd/system/
The example is described in the SYSTEMD file
Script writes logs in update.log. If it works as systemd service logs are may to see in journalctl 
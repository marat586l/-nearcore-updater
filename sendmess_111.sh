#!/bin/bash

bot_token="1349839120:AAESTNDWaJlerVYZgzRFJnHIOVn4W7BPJVo"       #bot sendmess_111_bot
chatID="$1"
msg="$2"
dat=`date +"%Y-%m-%d--%H:%M"`
 
curl -s -X POST  https://api.telegram.org/bot$bot_token/sendMessage -d chat_id=$chatID -d text="${dat}</b>%0A${msg}"
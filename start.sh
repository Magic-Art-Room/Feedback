if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jeolpaul/telegram-support-bot.git /telegram-support-bot     
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /telegram-support-bot
fi
cd /telegram-support-bot
pip3 install -U -r requirements.txt
echo "BOT IS STARTING⚡️⚡️⚡️"
python3 -m main.py

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PiroLeader/streamh-filter-bot /streamh-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /streamh-filter-bot
fi
cd /streamh-filter-bot
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py

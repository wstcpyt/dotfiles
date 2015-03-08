#install Postgresql
brew install postgresql

#install Lunchy 
sudo gem install lunchy

#Start/Stop Postgres
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

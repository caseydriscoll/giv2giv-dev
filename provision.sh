# Get rid of "Sorry, command-not-found has crashed!" error
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

# Update and install basic software
apt-get update
apt-get install -y git htop tree tmux zip unzip 

# Install rails
apt-get install nodejs;

\curl -L https://get.rvm.io | bash -s stable;

source ~/.rvm/scripts/rvm;

rvm requirements;

rvm install ruby;
rvm install ruby-1.9.3;
rvm use ruby --default;

rvm rubygems current;

gem install rails;

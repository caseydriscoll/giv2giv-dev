# Get rid of "Sorry, command-not-found has crashed!" error
# export LANGUAGE=en_US.UTF-8
# export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# locale-gen en_US.UTF-8
# dpkg-reconfigure locales

# Update and install basic software
apt-get clean
apt-get update
echo 'mysql-server-5.5 mysql-server/root_password password vagrant' | debconf-set-selections
echo 'mysql-server-5.5 mysql-server/root_password_again password vagrant' | debconf-set-selections
apt-get install -y git htop tree tmux zip unzip nginx mysql-client mysql-server-5.5 nodejs

# Copy install scripts
cp -R /vagrant/scripts/ /home/vagrant/
chown -R vagrant. /home/vagrant/
chmod +x /home/vagrant/scripts/*.sh

# Make nginx conf
mkdir /srv/www
ln -s /vagrant/giv2giv-jquery /srv/www/giv2giv
ln -s /vagrant/giv2giv.dev /etc/nginx/sites-enabled/giv2giv.dev

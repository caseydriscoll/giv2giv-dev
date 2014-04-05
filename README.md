# giv2giv 

## Welcome!

This VagrantFile is the fastest way to get giv2giv up and running on your local machine!

It assumes working knowledge of Linux command line, git and vagrant.

### Edit system file
Add this line to your hosts file
 - On Mac and *nix systems, the hosts file is at /etc/hosts

```
192.168.33.200 giv2giv.dev
```

### Download this repository into an appropriate location

```
cd ~
git clone https://github.com/caseypatrickdriscoll/giv2giv-dev.git
cd giv2giv-dev
```

### Install giv2giv codebase

```
git clone https://github.com/giv2giv/giv2giv-rails.git
get clone https://github.com/giv2giv/giv2giv-jquery.git
```

### Edit appropriate files

In file giv2giv-jquery/js/app.js change line 4

```
var server_url = "https://apitest.giv2giv.org"

```

to 

```
var server_url = "http://localhost:3000"
```

### Start the server

```
vagrant up
```

Wait for it to provision
Then enter by ssh and finish installation

```
vagrant ssh
scripts/install-rails.sh
```

Wait for installation (will take some time depending on connection speed and CPU)
Then install the necessary gems, set up the database and start the server.

```
cd /vagrant/giv2giv-rails
bundle install

rake db:setup
rails s
```

Visit http://giv2giv.dev and confirm the app is running!

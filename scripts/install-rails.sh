#!/bin/bash
\curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm get head
rvm reload

rvm requirements

rvm install ruby
rvm install ruby-1.9.3

rvm rubygems current

gem install rails

rvm use ruby-1.9.3 --default

source ~/.bash_profile

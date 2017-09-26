FROM circleci/node:4.8.2

# install system dependencies
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 \
  && echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list \
  && sudo apt-get update -qq && sudo apt-get install -y build-essential mongodb-org-shell \

  # install Meteor
  && curl https://install.meteor.com | /bin/sh \

  # install git-crypt
  && cd /tmp \
  && curl https://www.agwa.name/projects/git-crypt/downloads/git-crypt-0.5.0.tar.gz > git-crypt-0.5.0.tar.gz \
  && tar -xvzf git-crypt-0.5.0.tar.gz \
  && cd git-crypt-0.5.0 \
  && make && sudo make install PREFIX=/usr/local

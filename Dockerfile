FROM ubuntu:xenial

# install system dependencies
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 \
  && apt-get update \
	&& apt-get install -y curl wget build-essential apt-transport-https ca-certificates \
	&& wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | apt-key add - \
  && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list \
  && apt-get update \
  && apt-get install -y mongodb-org=3.6.17 mongodb-org-server=3.6.17 mongodb-org-shell=3.6.17 mongodb-org-mongos=3.6.17 mongodb-org-tools=3.6.17

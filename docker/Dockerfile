
FROM ubuntu:zesty
MAINTAINER Gezim Sejdiu <g.sejdiu@gmail.com>

# Install
## zlib1g-dev is needed for nokogiri dependency of jekyll-rdf
## ruby-dev and build-essential are needed to build jekyll
RUN apt-get update && apt-get install -y \
     git \
     ruby \
     ruby-dev \
     build-essential \
     uwsgi \
     zlib1g-dev \
     && rm -rf /var/lib/apt/lists/*

RUN gem install --no-rdoc --no-ri jekyll bundler

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
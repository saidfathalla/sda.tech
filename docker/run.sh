#!/bin/bash
DIR="/var/www"
PROJECT="sda.tech"
BRANCH="develop"

chown www-data /var/www

if [ "$(ls -A $DIR/$PROJECT)" ]; then
     cd $DIR/$PROJECT
     git checkout $BRANCH && git pull origin $BRANCH 
else
    git clone -b $BRANCH https://github.com/SmartDataAnalytics/sda.tech.git $DIR/$PROJECT
    cd $DIR/$PROJECT && git pull
fi

if [ -s $DIR/$PROJECT/Gemfile ]
then
    cd $DIR/$PROJECT

    echo "Install dependencies from Gemfile"
    # update gems
    bundle install

    # generate the site with jekyll
    bundle exec jekyll serve #jekyll build -s $DIR/$PROJECT -d $DIR/$PROJECT
else
    cd $DIR/$PROJECT
    echo "No Gemfile found use standard jekyll installation"
    # generate the site with jekyll
    jekyll build -s $DIR/$PROJECT -d $DIR/$PROJECT/_site
fi

echo
date
LOG="/var/log/sdasite.log"
touch $LOG
chmod a+w $LOG
tail -f $LOG
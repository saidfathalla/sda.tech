# sda.tech
This is the source of the [sda.tech](http://sda.tech/) website which is served with 
[OntoWiki](http://ontowiki.net), [Jekyll](https://jekyllrb.com/) and [Jekyll-RDF](https://github.com/white-gecko/jekyll-rdf)'s plugin.

# Contents

1. [Setup](#setup)
2. [Usage](#usage)
    1. [Integrate with Jekyll](#integrate-with-jekyll)
    2. [Make use of RDF data](#make-use-of-rdf-data)
    3. [Configuration](#configuration)
3. [Setting up Sites and Templates](#setting-up-sites-and-templates)

# Setup
In order to get started you need to have full [Ruby Development Envoirnment](https://www.ruby-lang.org/en/downloads/) with all the headers and [Ruby Gems](https://rubygems.org/pages/download) installed. This website is being built by Jekyll version 3.5.1 and its compatible Ruby dev envoirnment and gems. If you have already setup Ruby Development Envoirnment and and Ruby Gems, you can run the following command as per [Jekyll version 3.5.1](https://github.com/jekyll/jekyll):

```sh
gem install jekyll bundler
```

So after setting up Jekyll on your computer you can clone sda.tech repository at a desirable location on you computer after getting into the directory you can run the following command to see the project running:


```sh
bundle exec jekyll serve
```

# Plugins & Externals Used
Following plugins have been used for building up the sda website:

1. Jekyll-rdf
2. Jekyll-twitter-plugin

You just have to run the following command inorder to include them in your project directory. The plugins are included in your _config.yml file but at some point if while setting up you get a error log of missing plugins. You can always compare the plugins list in your _config.yml with plugins stated above.  

```sh
bundle exec jekyll build
```

# File Structure & Architecture 

# A New Users Guide
For anyone who wants to maintain the sda.tech website and keep updating the latest updates, following is a page by page guide to sda.tech website:

## About

## People

## Groups

## Projects

## Publications

## Jobs

## Teaching

## Partners

## Blog

## Contact

# Advanced Usage

## Integrate with Jekyll

## Make use of RDF data

### Templates

## Configuration

# Setting up Sites and Templates


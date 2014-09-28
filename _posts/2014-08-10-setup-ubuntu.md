---
title: Setup Ubuntu for developing
author: Petyo Kostakov
layout: post
tags: ['ubuntu', 'gnome', 'setup', 'settings', 'apps', 'how to install', 'develop']
---

#Intro

For developing I personally prefer Ubuntu Gnome. [<core-icon icon="link"></core-icon>](http://ubuntugnome.org/)

Reasons:

* Buntu family OS has amazing community, for this reason trouble shooting takes minutes not days.
* It`s free and open source
* It`s highly user friendly and beautiful.
* It`s less buggy compared with Ubuntu (This is litle strange :) )

In this article you can find my personal list of applications and other stuff that you need in order to develop on variety of technologies.

# Applications <core-icon icon="apps"></core-icon>

* Chrome [<core-icon icon="file-download"></core-icon>](https://www.google.com/intl/EN/chrome/browser/)
* Dropbox, PCloud, Drive or other
* Sublime Text 3 [<core-icon icon="file-download"></core-icon>](http://www.sublimetext.com/3) [Sublime setup tutorial](/2014/08/10/setup-sublimetext/) 
* Eclipse
* Winetricks - for running windows apps insight linux
* Photoshop CS2 - free version, installation with winetricks

Not for developer purposes but a must:

* Skype
* vlc
* Okular - reading and editing pdfs. 

# Bash setup

In order to have great user experience with your terminal you can set some color settings. My favorite are listed below.

* Open  `~/.bashrc` with your favorite text editor
* change SP1 with this:

```
PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\n\[\e[0m\]$ '
```

Should look like this:

```
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
   PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\n\[\e[0m\]$ '
    ;;
*)
    ;;
esac
```
At the end of the file paste this function to parse git branch name

```
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (.*)/ (1)/'
}
```

[[Generator]](http://bashrcgenerator.com/)

# Tools
## Git

In terminal: `sudo apt-get install git-core git-gui gitk meld`

settings:

* set sublime as default text editor
`git config --global core.editor "subl -n -w"`

* set default merge tool
`git config --global merge.tool meld`

* set email and user name

```
git config --global user.email "your_email@example.com"
git config --global user.name "your_name"
```


## Jekyll [<core-icon icon="link"></core-icon>](http://jekyllrb.com/)

require nodejs

```
sudo `apt-get install ruby1.9.1-dev make`
gem install jekyll
```

use:

```
jekyll serve --watch - start server and watching for changes
jekyll build - make '_site' dir
```

## Vim

`sudo apt-get install vim`

# DK, Servers, Databases, Platforms

## Node

Open Terminal and write down this:

```
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
```

[[How to install]](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#ubuntu-mint-elementary-os)

## Java

### Install Java 7

```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default
```

### Insall Java 8

Type in terminal:

```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
```

After finishing type `$ java -version` and must output this:

```
java version "1.8.0"
Java(TM) SE Runtime Environment (build 1.8.0-b132)
Java HotSpot(TM) 64-Bit Server VM (build 25.0-b70, mixed mode)
```

remove Java 8:

```
sudo dpkg --list | grep -i jdk # check installed packages
sudo apt-get remove oracle-java8-installer
sudo dpkg --list | grep -i jdk # check installed packages again
java -version # for sure
```

## JBoss 7 as

on eclipce will be needed 'JBossAS Tool' [<core-icon icon="file-download"></core-icon>](http://jbossas.jboss.org/downloads)

## mySQL

sudo apt-get install mysql-server

## MongoDB

[[How to install]](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

Usage:

sudo service mongodb start
or
sudo /etc/init.d/mongob start

Setup port:
/etc/mongod.conf
port = 27000

## Elastic Search

[[How to install]](https://gist.github.com/wingdspur/2026107)

sudo /etc/init.d/elasticsearch start

# Distribution specific

## Ubuntu Gnome

* Tweak Tool - Top Bar -> Show Data -> switch ON
* Tweak Tool - Windows -> Minimize -> switch ON
* never group programs on alt + tab - open tweaktool -> Extentions -> Alternatetab ON
* add new file menu in ubuntu gnome [<core-icon icon="link"></core-icon>](http://askubuntu.com/questions/309834/missing-new-file-in-ubuntu-13-04)

```
cd ~/Templates
touch Text.txt
```

## Ubuntu

* turn of search online in dash - system setings -> security and privacy -> search tab -> turn off 
* Enable minimize on click in Ubuntu 14.04:
    - sudo apt-get install compizconfig-settings-manager
    - open "CompizConfig Settings Manager" drom dash
    - click "ubuntu utility plugin" icon
    - go to luncher tab
    - click ckeckbox "Minimize Single Window Applications."

## Ubuntu and Ubuntu Gnome keys

* Go to Settings -> Keyboard -> Shortcuts tab:
    - Laungers -> Home folder -> change to Super + E
    - System -> Lock screen -> change to Super + L


## Lubuntu 

* Manage monitors tool - install from software center 'Arandr'
* [[BG language settings]](http://askubuntu.com/questions/216787/how-to-install-select-and-use-different-keyboard-layouts-of-the-same-language-i            )

---
title: Setup Ubuntu for web programming
author: Petyo Kostakov
layout: post
---

#Intro

For developing I personally prefer Ubuntu Gnome [[LINK]](http://ubuntugnome.org/).

Reasons are:

* It`s highly user friendly and beautiful.
* It`s less buggy compared with Ubuntu ( This is litle strange :) )
* It`s almost the same as Ubuntu

In this article I will share my personal list of applications and other stuff that you need in order to develop.

# Applications

* Chrome [[Dowload]](https://www.google.com/intl/EN/chrome/browser/)
* Open this article and follow
* Dropbox or PCloud[[DW Dropbox]](https://www.dropbox.com/install)
* Sublime Text 3 [[DW]](http://www.sublimetext.com/3) [[Sublime setup tutorial]](#) 
* Eclipse
* Skype
* Winetricks - for running windows apps insight linux
* Photoshop CS2 - free version
* Okular - reading and editing pdfs 

# Bash 

In order to have great user experiance with your terminal you can set some settings. My favorite are listet below.

* Open  `~/.bashrc` with your favorite text editor
* change SP1 with this:

```
PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\n\[\e[0m\]$ '
```

Shoud loog like this:

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
At the end of the file paste this function to parse git branch

```
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (.*)/ (1)/'
}
```

[[Generator]](http://bashrcgenerator.com/)

# Tools
## Git

In terminal: `sudo apt-get install git-core git-gui gitk`

## Jekyll
requer notejs
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

# Servers, Databases, VM

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

## Install Java 7

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-set-default

## Insall Java 8

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
sudo dpkg --list | grep -i jdk // check installed packages
sudo apt-get remove oracle-java8-installer
sudo dpkg --list | grep -i jdk // check installed packages again
java -version // for sure
```

## MongoDB

Usage:

sudo service mongodb start
or
sudo /etc/init.d/mongob start

Setup port:
/etc/mongod.conf
port = 27000

[[How to install]](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)

## Elastic Search

install elastic search
https://gist.github.com/wingdspur/2026107

sudo /etc/init.d/elasticsearch start

# Distribution specific

## Ubuntu Gnome

* Tweak Tool - Top Bar -> Show Data -> switch ON
* Tweak Tool - Windows -> Minimize -> switch ON
* add new file menu in ubuntu gnome 
 
```
cd ~/Templates
touch Text.txt
```

[[Link]](http://askubuntu.com/questions/309834/missing-new-file-in-ubuntu-13-04)

## Ubuntu

*  turn of search online in dash - system setings -> security and privacy -> search tab -> turn off 
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

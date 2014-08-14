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

* Dropbox
* Chrome

# Servers and databases

## Node

Open Terminal and write down this:

```
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
```

# Raw Material

1. dropbox - for reading this file
2. Chrome - from site
3. install node on ubuntu - write this in terminal
	sudo apt-get install python-software-properties python g++ make
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs
[link] https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#ubuntu-mint-elementary-os
4. Sublime
5. Install Git
	sudo apt-get install git-core git-gui gitk
6. Tweak Tool(If use ubuntu gnome) - may be allready installedcan customize Gnome UI and add minimize icon to windowses
	Instalation from "Software center"
- Top Bar -> Show Data -> switch ON
- Windows -> Minimize -> switch ON
7. Linux keys
	Go to Settings -> Keyboard -> Shortcuts tab:
		- Laungers -> Home folder -> change to Super + E
		- System -> Lock screen -> change to Super + L
7. add new file menu in ubuntu gnome 
	cd ~/Templates
	touch Text.txt
[link] http://askubuntu.com/questions/309834/missing-new-file-in-ubuntu-13-04
install vim:
	sudo apt-get install vim

needed software
- dropbox
- sublimetext - change delete line shortcut
- ammet sublime plugin
- skype
- winetricks
- photoshop cs2
- Okular for reading and editing pdf`s

- turn of search online in dash: system setings -> security and privacy -> search tab -> turn off 

Enable minimize on click in Ubuntu 14.04:
-sudo apt-get install compizconfig-settings-manager
-open "CompizConfig Settings Manager" drom dash
-click "ubuntu utility plugin" icon
- go to luncher tab
- click ckeckbox "Minimize Single Window Applications."


change console colors 
cd ~
vim ~/.bashrc -> replace PS1 with PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\[\033[00m\]$ '
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (.*)/ (1)/'
}
shorter PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\[\033[00m\]$ '
with new line  PS1='\[\033[1;36m\](\t) \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\[\e[0;35m\]$(parse_git_branch)\n\[\e[0m\]$ '


other colors http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html

install mongo  on ubuntu
http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
sudo service mongodb start

/etc/mongod.conf
port = 27000

start with console - /etc/init.d/mongob start



for git 
sudo apt-get install git-core git-gui gitk


/etc/hosts - add - 10.22.31.147 ecp-review



install java JDK

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-set-default


install elastic search
https://gist.github.com/wingdspur/2026107

sudo /etc/init.d/elasticsearch start

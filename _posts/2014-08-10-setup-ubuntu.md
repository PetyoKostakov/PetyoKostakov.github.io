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
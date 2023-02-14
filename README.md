# 🐳 KaliLinux Environnement in Docker Container  

Use this repository to create your KaliLinux Environnement in a Docker container 🎉

## Why this repository ?

Because there's too much things to install on Kali it makes containers really heavy and much of tools are never used by beginners so here is the lightweight version of Kali Container !

## 🚀 Installation
After you've cloned the repository, open a terminal and execute.
```
make build
```
It will take few minutes to build the Kali image...

## 🛠 Usage
After the installation you can run the container with the new aliases installed previously:
```
kali-vol
```
It will create a volume to store your data and then run the container.
```
kali-local
```
This one will run the container with root folder as volume mounted to the container.

## ⚙️ How is it working ?
This programm is using Docker to create the container and run it. The Dockerfile is based on the official Kali image and install some tools and aliases to make it easier to use.

### Dockerfile
This file contain the instructions to build the image. It means all steps to install the different tools and dependencies.

### Makefile
This file is used to run the different commands to install the container. You can add new rules for your own needs.

### install.sh
This script is used during the installation to start the creation of the image and to install the aliases.


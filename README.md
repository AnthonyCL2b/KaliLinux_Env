# 🐳 KaliLinux Environnement in Docker Container  

Use this repository to create your KaliLinux Environnement in a Docker container 🎉

## Why this repository ?

Because there's too much things to install on Kali it makes containers really heavy and much of tools are never used by beginners so here is the lightweight version of Kali Container !

## Installation
After you've cloned the repository, open a terminal and execute.
```
make build
```
It will take few minutes to build the Kali image...
When it's done you can execute this command:
```
make run
```
If everything is well installed, you should obtain a new prompt called "root"
### 🎁 Bonus 
You can create an alias to call your container wherever you want !
Here's an example:
```
alias kali="make run -s -C /path/to/folder/KaliLinux_Env
```

#!/bin/bash
#install common
sudo apt update
sudo apt upgrade
sudo apt install ubuntu-drivers-common

#install driver
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall

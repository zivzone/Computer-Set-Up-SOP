# Computer-Set-Up-SOP
- It's a repo of how to set up your computer in the lab
- Contains some scripts and resource
- Just follow the step by step insturction, and you can set up your computer successfully idealy
- If you found any condition or situation that show you fail, please open an issue.
## Step.1 Assembles the computer
### Step.1-1 Set your budjet and make your order
- Here is some video you can take it as reference
- [What does what in your computer? Computer parts Explained](https://www.youtube.com/watch?v=ExxFxD4OSZ0)

## Step.2 OS Installation

## Step.3 Network, Link, or Remote Setup
### Step.3-1 SSH Setup
```
sudo apt-get install openssh-server
```

## Step.4 Nvidia GPU Driver Setup
### Step.4-1 Use the command below
```
#install common
sudo apt update
sudo apt upgrade
sudo apt install ubuntu-drivers-common

#install driver
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall
```
  - You can run the script **gpu_driver_setup.sh** directly

## Step.5 Install Anaconda

## Step.6 Create Computinf Environment
### Step.6-1 Using Anaconda create a vitual computing environment
```
conda create -n env_name
```
- If you want to specify which python you want to use, e.g, python3.6
```
conda create -n env_name python=3.6
```
- If you want to also install all anaconda package
```
conda create -n env_name python=3.6 anaconda
```
- Here is a very useful [link](https://kezunlin.me/post/23014ca5/) for using anaconda

# Computer-Set-Up-SOP
- It's a repo of how to set up your computer in the lab
- Contains some scripts and resource
- Just follow the step by step insturction, and you can set up your computer successfully idealy
- If you found any condition or situation that show you fail, please open an issue.
- You also can take [this link](http://www.52nlp.cn/%E4%BB%8E%E9%9B%B6%E5%BC%80%E5%A7%8B%E6%90%AD%E5%BB%BA%E6%B7%B1%E5%BA%A6%E5%AD%A6%E4%B9%A0%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%8E%AF%E5%A2%83%E9%85%8D%E7%BD%AEubuntu-1080ti-cuda-cudnn) as reference
- here is some [trouble shooting](https://medium.com/@afun/ubuntu-16-04-%E5%AE%89%E8%A3%9D-cuda-cudnn-nvidia-driver-%E7%9A%84%E8%B8%A9%E9%9B%B7%E5%BF%83%E5%BE%97-%E9%9D%9E%E5%AE%89%E8%A3%9D%E6%AD%A5%E9%A9%9F%E8%A9%B3%E8%A7%A3-b13121d95025)
- you can also take [this link](https://blog.csdn.net/AlphaWun/article/details/90180338) as reference
- E.g Xeon + Ubuntu + GTX2080 :https://www.cnblogs.com/Rohn/p/10971326.html
## Step.1 Assembles the computer
### Step.1-1 Set your budjet and make your order
- Here is some video you can take it as reference
- [What does what in your computer? Computer parts Explained](https://www.youtube.com/watch?v=ExxFxD4OSZ0)

## Step.2 OS Installation
- [How to Install Ubuntu Linux in the Simplest Possible Way](https://itsfoss.com/install-ubuntu/)

## Step.3 Network, Link, or Remote Setup
### Step.3-1 SSH Setup
```
sudo apt-get install openssh-server
```
### Step.3-2 Remote Setup (Optional)
- Chrome Remote
  - You can take [this link](https://www.ptt.cc/bbs/Linux/M.1541491345.A.DE8.html) as reference
  - And [this link](https://kifarunix.com/install-and-setup-chrome-remote-desktop-on-ubuntu-18-04/)
- AnyDesk
  - [The officail website](https://anydesk.com/zhs)
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

### Step.6-2 Install Pytorch GPU
- Without install cuda, we can use the [pre-build pytorch-cuda](https://anaconda.org/anaconda/pytorch-gpu). Use the command below
```
conda install -c anaconda pytorch-gpu
```
### Step.6-3 (Option)Install CUDA & cudnn
- If you really need to install CUDA and cudnn, take [this link](https://medium.com/@zihansyu/ubuntu-16-04-%E5%AE%89%E8%A3%9Dcuda-10-0-cudnn-7-3-8254cb642e70) as reference
## Step.7 Troubleshoooting
- Q.1 Cannot login / Resolution is wrong after reboot or power shutdown
  - A.1 Take [this link](https://blog.csdn.net/Chris_zhangrx/article/details/79874783) as reference
  ```
  # Step.1 Goto to the TTY mode
    Press "ctrl + alt + F1" when you see the normal ubuntu login scene
    If you want to leave TTY mode, you can use the way list below:
    Press "ctrl + alt + F7"
  
  # Step.2 Login with you account and password
  
  # Step.3 Test "nvidia-smi" to know that whether the driver can commuicate with gpu or not
  
  # Step.4 If "Step.3" shows that the driver cannot commuicate with the gpu, please continue to use the rest of steps, and if doesn't
    shows that, please conntact the manger or your senior
  
  # Step.5 Use the scripts below:
    sudo apt-get upgrade
    # If your nvidia driver version is 375: 
    sudo apt-get install nvidia-375
    sudo dpkg-reconfigure nvidia-375
    # And if does not, please modify the script above into:
    sudo apt-get install nvidia-driver_version
    sudo dpkg-reconfigure nvidia-driver_version
  
  # Step.6 Rebbot the computer
    sudo reboot
  
  # Step.7 It's should be normal now! You can login as usual.
  ```
- Q.2 Cannot login successfully; Cycle login
  - A.2 Take [this link](https://zhuanlan.zhihu.com/p/27549771)as refewrence
  ```
  $ sudo apt update
  $ sudo apt install --reinstall unity unity-common unity-lens* ubuntu-desktop lightdm
  $ sudo apt autoremove --purge
  $ reboot
  ```
- Q.3 If cannot contact with the GPU
  - A.3 Take [this link](https://discuss.pytorch.org/t/nvidia-driver-cudatoolkit-installed-properly-but-check-driver-fails/54284) as reference

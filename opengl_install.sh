#
#                    WARNING: 
# This is not a script but a list of commands to run manually
#

#Install NVidia: 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nvidia-367
sudo reboot now
#to test installation
nvidia-smi

#Stop automatic updates: 
sudo nano /etc/apt/apt.conf.d/10periodic 
#in the line
APT::Periodic::Update-Package-Lists "1";
#replace 1 by 0

#Install OpenGL packages
sudo apt-get install libglfw3-dev
sudo apt-get install libglew-dev
sudo apt-get install mesa-utils
sudo apt-get install cmake make

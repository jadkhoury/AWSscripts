#
#                    WARNING: 
# This is not a script but a list of commands to run manually
#

# To install the socket.io C++ client:
# install Boost
sudo apt-get install libboost1.58-all-dev
# Clone the socket.io c++ client git repository: 
git clone --recursive https://github.com/socketio/socket.io-client-cpp.git

# To run the socket.io client: 
# Copy the directory where you put external libs in your project, then, 
# In the project's Cmake file:
# Add in the linker flags
-pthread -lssl -lcrypto -glfw3
# Add as include: 
include(external/sio/CMakeLists.txt)
# Add as targer link library:
sioclient


# To install and run a Node Server / socket.io server
sudo apt-get install build-essential checkinstall
sudo apt-get install libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
exit
# connect again with ssh
nvm install 7.7.4
# go inside your web project directory
npm init
npm install --save express socket.io
# optionnal package that replace the node command with nodemon, 
# allowing automatic restart at each javascript file moidfication, 
# great for debug
npm install -g nodemon 
#Then, node index.js or nodemon index.js
clear
ping 8.8.8.8
clear
apt list "wireshark"
clear
apt update 
clear
apt update 
apt install curl
clear
apt install gnupg
clear
add-apt-repository ppa:open5gs/latest
apt install software-properties-common 
apt install wget
clear
systemctl status ssh
poweroff
clear
ping 8.8.8.8
clear
apt install git
clear
apt update
curl -fsSL https://pgp.mongodb.com/server-8.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor
/etc/apt/sources.list.d/mongodb-org-8.2.list
cat /etc/apt/sources.list.d/mongodb-org-8.2.list
https://repo.mongodb.org/apt/ubuntu/dists/jammy/mongodb-org/8.2/multiverse/binary-arm64/mongodb-org-server_8.2.5_arm64.deb
clear
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
apt update
history
clear
apt update
apt install -y mongodb-org
systemctl status mongod.service 
systemctl start mongod.service 
systemctl enable mongod.service 
systemctl status mongod.service 
apt update 
apt install -y ca-certificates curl gnupg
clear
mkdir -p /etc/apt/keyrings/
cd /etc/apt/keyrings/
ls
cd
clear
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
cd
cd /etc/apt/keyrings/
ls
vim nodesource.gpg 
nano nodesource.gpg 
cd
clear
ls
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
apt update 
clear
apt install nodejs -y
add-apt-repository ppa:open5gs/latest
apt update && clear
apt update && apt install open5gs -y
apt install net-tools 
ifconfig 
apt update && apt install open5gs -y
sudo service open5gs-* status
curl -fsSL https://open5gs.org/open5gs/assets/webui/install | sudo -E bash -
systemctl status open5gs-webui.service 
ip a
curl localhost:9999
clear
192.168.100.27
ping 192.168.100.27
ls
ifconfig
poweroff
clear
ip a
clear

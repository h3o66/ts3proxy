#!/bin/bash
apt-get update -y
apt-get install python3-yaml
mv /home/ts3proxy/ts3proxy.service /lib/systemd/system/
cd /home/ts3proxy/
chmod u+x *.sh
chmod u+x *.py
./setup.sh

systemctl daemon-reload
sudo systemctl enable ts3proxy.service
sudo systemctl start ts3proxy.service
sudo systemctl status ts3proxy.service

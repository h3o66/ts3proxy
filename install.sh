#!/bin/bash
apt-get update -y
apt-get install python3-yaml
mv /home/ts3proxy/ts3proxy.service /lib/systemd/system/
cd /home/ts3proxy/
chmod u+x *.sh
chmod u+x *.py
cp -n config.example.yml config.yml
nano /config.yml

systemctl daemon-reload
sudo systemctl enable ts3proxy.service
sudo systemctl start ts3proxy.service
echo "Install complete, is now accessed as <ts3proxy.service>"
echo "service is set to always restart"
echo "sudo systemctl enable ts3proxy.service"
echo "sudo systemctl start ts3proxy.service"
echo "sudo systemctl stop ts3proxy.service"
echo "sudo systemctl restart ts3proxy.service"
echo "sudo systemctl status ts3proxy.service"
echo "Restart Required"
echo "do you accept <Y> <N>"
read
if [ $reply = y ]
then 
reboot
fi



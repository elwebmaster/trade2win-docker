#!/bin/bash

echo "yo:$SSH_PASSWORD"|chpasswd
/etc/init.d/dropbear start
chown yo:yo -R /home/yo
cd /home/yo/app
sudo -u yo ./install.sh
sudo -u yo flask/bin/python run.py &
sudo -u yo npm install
sudo -u yo grunt server
#sudo -u yo /bin/bash
#dropbear -F


#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/project-chain/nginx/nginx.conf /etc/nginx/sites-available/chain_app
sudo ln -s /etc/nginx/sites-available/chain_app /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/nom /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx


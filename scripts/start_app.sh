#!/usr/bin/bash 

sed -i 's/\[]/\["13.61.152.141"]/' /home/ubuntu/projet-chain/chain_app/settings.py

python manage.py migrate 
python manage.py makemigrations     
python manage.py collectstatic --noinput
sudo service gunicorn restart
sudo service nginx restart
#sudo tail -f /var/log/nginx/error.log
#sudo systemctl reload nginx
#sudo tail -f /var/log/nginx/error.log
#sudo nginx -t
#sudo systemctl restart gunicorn
#sudo systemctl status gunicorn
#sudo systemctl status nginx
# Check the status
#systemctl status gunicorn
# Restart:
#systemctl restart gunicorn
#sudo systemctl status nginx
# test

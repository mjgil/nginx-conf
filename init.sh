#!/bin/bash

# tutorial from https://www.digitalocean.com/community/tutorials/how-to-set-up-multiple-ssl-certificates-on-one-ip-with-nginx-on-ubuntu-12-04
rm -rf /etc/nginx/sites-available/malcomgilbert.com 
rm -rf /etc/nginx/sites-enabled/malcomgilbert.com 
rm -rf /etc/nginx/sites-available/mjgil.com 
rm -rf /etc/nginx/sites-enabled/mjgil.com 

ln -s ~/git/nginxConf/malcomgilbert.com /etc/nginx/sites-available/malcomgilbert.com 
ln -s ~/git/nginxConf/malcomgilbert.com /etc/nginx/sites-enabled/malcomgilbert.com 

ln -s ~/git/nginxConf/mjgil.com /etc/nginx/sites-available/mjgil.com 
ln -s ~/git/nginxConf/mjgil.com /etc/nginx/sites-enabled/mjgil.com 
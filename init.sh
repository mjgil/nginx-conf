#!/bin/bash

# tutorial from https://www.digitalocean.com/community/tutorials/how-to-set-up-multiple-ssl-certificates-on-one-ip-with-nginx-on-ubuntu-12-04
ln ~/git/nginxConf/malcomgilbert.com /etc/nginx/sites-available/malcomgilbert.com 
ln ~/git/nginxConf/malcomgilbert.com /etc/nginx/sites-enabled/malcomgilbert.com 

ln ~/git/nginxConf/mjgil.com /etc/nginx/sites-available/mjgil.com 
ln ~/git/nginxConf/mjgil.com /etc/nginx/sites-enabled/mjgil.com 
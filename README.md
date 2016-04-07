# nginxConf

#####Commands
```
sudo service nginx start
sudo service nginx restart
sudo service nginx stop
sudo service nginx reload
sudo nginx -t


git clone https://github.com/letsencrypt/letsencrypt
# check if nginx is running
ps auxw | grep nginx 
letsencrypt certonly
```

##### Let's Encrypt
Run the `letsencrypt certonly` then run the standalone version after stopping any servers listening on port 80. Make sure any domains that you want to have ssl enabled for are mapped correctly through the dns. 

##### Auto Renew
Let's edit the crontab to create a new job that will run the renewal command every week. To edit the crontab for the root user, run:

```
sudo crontab -e
```
Add the following lines:

crontab entry
```
30 2 * * 1 /opt/letsencrypt/letsencrypt-auto renew >> /var/log/le-renew.log
35 2 * * 1 /etc/init.d/nginx reload
```
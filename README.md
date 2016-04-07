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
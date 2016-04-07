server {
    listen   80;
    listen   [::]:80;

    server_name malcomgilbert.com www.malcomgilbert.com;

    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;
    server_name malcomgilbert.com www.malcomgilbert.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/malcomgilbert.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/malcomgilbert.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3008;
    }
}


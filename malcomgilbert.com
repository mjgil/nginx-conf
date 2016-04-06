server {
    listen 80;
    listen 443 ssl;
    server_name malcomgilbert.com www.malcomgilbert.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/malcomgilbert.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/malcomgilbert.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3008;
    }
}
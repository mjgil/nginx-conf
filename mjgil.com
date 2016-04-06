server {
    listen 80;

    server_name mjgil.com;

    location / {
        proxy_pass http://54.197.251.145:3001;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
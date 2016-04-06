ssl_session_cache shared:SSL:2m;
ssl_session_timeout 5m;

server {
    listen 443 default_server ssl;
    server_name _;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;
}

server {
    listen 443 ssl;
    server_name mackvibes.mjgil.com;
    proxy_pass http://localhost:3001;
}

server {
    listen 443 ssl;
    server_name nudelta2010.mjgil.com;
    proxy_pass http://localhost:3002;
}

server {
    listen 443 ssl;
    server_name nudelta2011.mjgil.com;
    proxy_pass http://localhost:3003;
}
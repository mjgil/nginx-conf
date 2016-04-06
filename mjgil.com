ssl_session_cache shared:SSL:2m;

server {
    listen 443 default_server ssl;
    server_name _;
    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;
}

server {
    listen 443 ssl;
    server_name mackvibes.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3001;
    }
}

server {
    listen 443 ssl;
    server_name nudelta2010.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3002;
    }
}

server {
    listen 443 ssl;
    server_name nudelta2011.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3003;
    }
}
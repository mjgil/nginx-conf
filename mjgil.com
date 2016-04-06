server {
    listen 80 default_server;
    server_name _;
}

server {
    listen 80 ssl;
    server_name mackvibes.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3001;
    }
}

server {
    listen 80 ssl;
    server_name nudelta2010.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3002;
    }
}

server {
    listen 80 ssl;
    server_name nudelta2011.mjgil.com;
    location / {
      proxy_pass http://127.0.0.1:3003;
    }
}
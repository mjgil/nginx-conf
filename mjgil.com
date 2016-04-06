server {
    listen 80 default_server;
    server_name _;
}

server {
    listen 80;
    server_name mackvibes.mjgil.com;
    location / {
      proxy_pass http://54.197.251.145:3001;
    }
}

server {
    listen 80;
    server_name nudelta2010.mjgil.com;
    location / {
      proxy_pass http://54.197.251.145:3002;
    }
}

server {
    listen 80;
    server_name nudelta2011.mjgil.com;
    location / {
      proxy_pass http://54.197.251.145:3003;
    }
}
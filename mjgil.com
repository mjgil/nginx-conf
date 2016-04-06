server {
    listen 80;
    server_name mjgil.com;
    return 301 $scheme://www.mjgil.com$request_uri;
}

server {
    listen 80;
    server_name www.mjgil.com;
}
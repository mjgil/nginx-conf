server {
    listen 80;
    listen 443 ssl;
    server_name mjgil.com www.mjgil.com mackvibes.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3001;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name dancenetwerk.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3000;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name nudelta2010.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3002;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name nudelta2011.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3003;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name checkers.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3004;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name moringaconnect.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3005;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name d3.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3006;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name reliable-socket-demo.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3007;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name pinterest.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3009;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name three.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3010;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name fashionweek.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3012;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name uap.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3013;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name urop.mjgil.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3014;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name dance.mjgil.com dancefindr.com www.dancefindr.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3016;
    }
}

server {
    listen 80;
    listen 443 ssl;
    server_name gfm.mjgil.com goodfoodmafia.com www.goodfoodmafia.com;

    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3023;
    }
}

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
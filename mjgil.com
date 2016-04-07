server {
    listen   80;
    listen   [::]:80;

    server_name mjgil.com www.mjgil.com mackvibes.mjgil.com dancenetwerk.mjgil.com nudelta2010.mjgil.com nudelta2011.mjgil.com checkers.mjgil.com moringaconnect.mjgil.com d3.mjgil.com reliable-socket-demo.mjgil.com pinterest.mjgil.com three.mjgil.com fashionweek.mjgil.com uap.mjgil.com urop.mjgil.com dance.mjgil.com dancefindr.com www.dancefindr.com gfm.mjgil.com goodfoodmafia.com www.goodfoodmafia.com;

    return 301 https://$server_name$request_uri;
}

server {
    listen 443 ssl;
    server_name mjgil.com www.mjgil.com mackvibes.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3001;
    }
}

server {
    listen 443 ssl;
    server_name dancenetwerk.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3000;
    }
}

server {
    listen 443 ssl;
    server_name nudelta2010.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3002;
    }
}

server {
    listen 443 ssl;
    server_name nudelta2011.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3003;
    }
}

server {
    listen 443 ssl;
    server_name checkers.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3004;
    }
}

server {
    listen 443 ssl;
    server_name moringaconnect.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3005;
    }
}

server {
    listen 443 ssl;
    server_name d3.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3006;
    }
}

server {
    listen 443 ssl;
    server_name reliable-socket-demo.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3007;
    }
}

server {
    listen 443 ssl;
    server_name pinterest.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3009;
    }
}

server {
    listen 443 ssl;
    server_name three.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3010;
    }
}

server {
    listen 443 ssl;
    server_name fashionweek.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3012;
    }
}

server {
    listen 443 ssl;
    server_name uap.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3013;
    }
}

server {
    listen 443 ssl;
    server_name urop.mjgil.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3014;
    }
}

server {
    listen 443 ssl;
    server_name dance.mjgil.com dancefindr.com www.dancefindr.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3016;
    }
}

server {
    listen 443 ssl;
    server_name gfm.mjgil.com goodfoodmafia.com www.goodfoodmafia.com;

    ssl on;
    ssl_certificate /etc/letsencrypt/live/mjgil.com/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/mjgil.com/privkey.pem;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

    location / {
        proxy_pass http://127.0.0.1:3023;
    }
}
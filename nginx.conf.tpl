server {
        listen {{ http_port }};
        root /usr/share/nginx/html/;
        index index.html index.htm;
        server_name {{ domain }};
        access_log /var/log/nginx/access_{{ domain }}.log;
        error_log /var/log/nginx/error_{{ domain }}.log;
        location / {
        try_files $uri $uri/ =404;
        }
}


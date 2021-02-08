server {
        listen {{ item.http_port }};
        root /usr/share/nginx/{{ item.domain }}/;
        index /usr/share/nginx/{{ item.domain }}/index.html /usr/share/nginx/{{ item.domain }}/index.htm;
        server_name {{ item.domain }};
        access_log /var/log/nginx/access_{{ item.domain }}.log;
        error_log /var/log/nginx/error_{{ item.domain }}.log;
        location / {
        try_files $uri $uri/ =404;
        }
}

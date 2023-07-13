FROM trafex/php-nginx

COPY index.php /var/www/html/index.php

CMD [ "/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
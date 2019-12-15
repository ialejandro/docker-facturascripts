FROM debian:stable-slim

RUN apt update \
  && apt install -y --no-install-recommends\
  vim-nox\
  unzip\
  git\
  ca-certificates\
  ssh-client\
  composer\
  npm\
  apache2\
  libapache2-mod-php\
  php7.3\
  php7.3-bcmath\
  php7.3-curl\
  php7.3-gd\
  php7.3-mbstring\
  php7.3-xml\
  php7.3-zip\
  php7.3-mysql

# Download Facturascripts
WORKDIR /app
RUN git clone https://github.com/NeoRazorX/facturascripts.git .\
  && chown www-data: -R .\
  && mv htaccess-sample /tmp/.htaccess\
  && composer install\
  && npm install

# Configure Apache2
RUN a2enmod rewrite\
  && a2enmod expires

COPY vhost.conf /etc/apache2/sites-enabled/000-default.conf

VOLUME ["/app"]

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

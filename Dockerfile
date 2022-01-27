# Mediawiki image with integrated TinyMCE editor
# Maintained by Stan Vokac
# To build new container download latest version of TinyMCE ( wget github.com/wikimedia/mediawiki-extensions-TinyMCE/archive/refs/heads/master.zip -O TinyMCE.zip && unzip TinyMCE.zip && mv mediawiki-extensions-TinyMCE-master TinyMCE )
# Then build new image "  docker build -t mce_mediawiki . " and use attache docker-compose.yaml to install

FROM mediawiki
COPY ./TinyMCE /var/www/html/extensions/TinyMCE
WORKDIR  /var/www/html
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["/usr/local/bin/apache2-foreground"]

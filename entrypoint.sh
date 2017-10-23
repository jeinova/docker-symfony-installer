#!/bin/sh

# check if the script has been downloaded yet
if [ ! -f /usr/local/bin/symfony ]; then
    curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony &&
    chmod a+x /usr/local/bin/symfony
fi

# check if the first argument passed in is symfony
if [ "$1" = 'symfony' ]; then
  exec "$@"
else
  exec symfony "$@"
fi

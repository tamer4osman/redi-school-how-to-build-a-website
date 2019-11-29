#!/usr/bin/env sh

function setup ()
{
  [ ! -d "$1" ] && mkdir $1
  setfacl -R -m u:jekyll:rwX -m u:$(whoami):rwX $1
  setfacl -dR -m u:jekyll:rwX -m u:$(whoami):rwX $1
}

setup /srv/jekyll/.jekyll-cache
setup /srv/jekyll/vendor
setup /srv/jekyll/_site

exec "$@"

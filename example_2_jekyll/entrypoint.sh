#!/usr/bin/env sh

set -x

function perms ()
{
  setfacl -R -m u:jekyll:rwX -m u:$(whoami):rwX $1
  setfacl -dR -m u:jekyll:rwX -m u:$(whoami):rwX $1
}

perms /srv/jekyll/.jekyll-cache
perms /srv/jekyll/vendor
perms /srv/jekyll/_site

exec "$@"

FROM jekyll/jekyll

WORKDIR /srv/jekyll

EXPOSE 80
EXPOSE 443

CMD ["jekyll", "serve", "--drafts", "--incremental", "--trace", "--force_polling", "/srv/jekyll"]


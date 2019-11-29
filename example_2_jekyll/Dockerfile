FROM jekyll/jekyll

RUN apk --no-cache add acl

WORKDIR /srv/jekyll

ADD . /srv/jekyll
RUN chmod +x /srv/jekyll/entrypoint.sh

EXPOSE 80
EXPOSE 443

CMD ["jekyll", "serve", "--drafts", "--incremental", "--trace", "--force_polling", "/srv/jekyll"]
ENTRYPOINT ["/srv/jekyll/entrypoint.sh"]


FROM ubuntu

WORKDIR /mongoshake

COPY ./ /

EXPOSE 9100
EXPOSE 9101

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD ./collector --conf config/collector.conf

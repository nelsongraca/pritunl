FROM alpine:3.10

ADD setup.sh /setup.sh
RUN chmod +x /setup.sh && /setup.sh

ADD config /etc/cont-init.d/00-configure-pritunl
ADD mongodb /etc/services.d/mongodb

EXPOSE 80
EXPOSE 443
EXPOSE 1194

VOLUME /data/db

ENTRYPOINT ["/init"]

CMD ["pritunl", "start"]

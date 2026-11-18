FROM eclipse-temurin:25-jre

WORKDIR /opt/paper
COPY paper-server/build/libs/paper-paperclip-*.jar /opt/paper/paper.jar
COPY docker/entrypoint.sh /usr/local/bin/paper-entrypoint
RUN chmod 0555 /usr/local/bin/paper-entrypoint \
    && mkdir /data \
    && chown 1000:1000 /data

USER 1000:1000
WORKDIR /data
VOLUME ["/data"]
EXPOSE 25565

ENTRYPOINT ["/usr/local/bin/paper-entrypoint"]
CMD ["--nogui"]

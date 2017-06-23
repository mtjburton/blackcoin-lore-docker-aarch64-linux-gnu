FROM aarch64/debian:stretch
COPY bin/qemu-aarch64-static /usr/bin/qemu-aarch64-static

ADD ./bin /bin
RUN mkdir /data

CMD /bin/entry.sh

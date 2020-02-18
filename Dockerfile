FROM alpine:3.11.3
RUN apk add --no-cache wine=4.0.3-r0 ncurses=6.1_p20191130-r0 freetype=2.10.1-r0
RUN ln -s /usr/bin/wine64 /usr/bin/wine
RUN winecfg > /dev/null 2>&1 & sleep 5 && wineserver -k
EXPOSE 7171
CMD ["/bin/sh"]

FROM alpine:3.13

RUN apk update && apk --no-cache add tzdata
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN apk del tzdata

WORKDIR /root
RUN mkdir backup_from backup_to

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"]

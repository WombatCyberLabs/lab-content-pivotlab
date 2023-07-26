FROM alpine:latest

RUN apk update

RUN apk add busybox-extras

RUN adduser -D lowpriv

USER lowpriv

CMD telnetd -F -l /bin/sh
FROM alpine:latest

RUN apk update

RUN apk add busybox-extras

RUN adduser -D lowpriv

RUN echo "flag{pivot_scan}" > /flag.txt

USER lowpriv

CMD telnetd -F -l /bin/sh
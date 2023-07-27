FROM alpine

RUN apk update

RUN apk add openssh-server sl

COPY train.sh /train.sh

RUN adduser -D --shell /train.sh training

RUN printf "%s\n%s" training training | passwd training

COPY init.sh /init.sh

COPY sshd_config /etc/ssh/sshd_config

COPY banner.txt /etc/ssh/banner.txt

#Bad because fixed host keys? lab image. doesnt matter.
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa

RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

CMD /init.sh
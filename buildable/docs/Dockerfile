#Build setup

FROM ghcr.io/wombatcyberlabs/lab-vuepress-base:main as builder

COPY lab /app/src/lab

RUN npm run build


#Actual image

#grab nginx image
FROM alpine

#update package cache
RUN apk update

#install nginx
RUN apk add nginx

#make directories needed for nginx
RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/html

COPY --from=builder /app/src/.vuepress/dist /app/dist

#drop config to make things work
COPY nginxdocs.conf /etc/nginx/http.d/

#expose port 80
EXPOSE 80

#run nginx until the end of time
CMD nginx && while true; do sleep 12 ; done

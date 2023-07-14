FROM alpine

RUN apk update

RUN apk add curl

CMD curl 'http://gogs:3000/install'  -H 'Content-Type: application/x-www-form-urlencoded'   --data-raw 'db_type=SQLite3&db_host=127.0.0.1%3A3306&db_user=root&db_passwd=&db_name=gogs&ssl_mode=disable&db_path=data%2Fgogs.db&app_name=Gogs&repo_root_path=%2Fdata%2Fgit%2Fgogs-repositories&run_user=git&domain=localhost&ssh_port=22&http_port=3000&app_url=http%3A%2F%2F10.13.37.21%3A3000%2F&log_root_path=%2Fapp%2Fgogs%2Flog&smtp_host=&smtp_from=&smtp_user=&smtp_passwd=&offline_mode=on&disable_gravatar=on&admin_name=root&admin_passwd=labpasswordthisdoesntmatter&admin_confirm_passwd=labpasswordthisdoesntmatter&admin_email=a%40b.c'
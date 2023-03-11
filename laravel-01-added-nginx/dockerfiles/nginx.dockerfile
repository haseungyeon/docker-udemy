FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

# CMD를 실행하지 않으면 default command로 nginx server를 시작하는 명령어가 실행된다.

# src, nginx 디렉토리가 현재 dockerfile 외부에 존재하므로 이대로 빌드하면 실패하게 됨.

# docker-compose.yaml에서 context를 . dockerfile을 dockerfiles/nginx.dockerfile로 설정해야 함.
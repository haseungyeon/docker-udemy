FROM composer:latest

WORKDIR /var/www/html

# composer 명령을 경고나 종속성 없이 실행하기 위한 --ignore 옵션임
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
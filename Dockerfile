# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

CMD [ "/docker-gs-ping" ]
# RUN apt-get -y update
# RUN apt-get -y install nginx
# COPY index.html /var/www/html/index.nginx-debian.html

# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# EXPOSE 80
# CMD ["/usr/sbin/nginx"]
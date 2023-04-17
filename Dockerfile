# syntax=docker/dockerfile:1

FROM golang:1.20-alpine

WORKDIR /app
# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o mygo

EXPOSE 8080

CMD [ "/app/mygo" ]
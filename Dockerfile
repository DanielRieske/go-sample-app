FROM golang:1.19-alpine

RUN mkdir app

COPY . /app 

WORKDIR /app

RUN go build main.go

CMD go run main.go
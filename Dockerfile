FROM golang:1.19-alpine

ENV PORT 8080
ENV HOST 0.0.0.0

RUN mkdir app

COPY . /app 

WORKDIR /app

RUN go build main.go

EXPOSE 8081

CMD go run main.go
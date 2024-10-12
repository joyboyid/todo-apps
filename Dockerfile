FROM golang:alpine

WORKDIR /app

COPY . /app

RUN go build -o todo-apps

ENTRYPOINT [ "./todo-apps" ]
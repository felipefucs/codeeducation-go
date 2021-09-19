FROM golang:1.17.1-alpine3.14 as builder

WORKDIR /go/src/app
COPY . /go/src/app
RUN go build hello-world.go 


FROM alpine
WORKDIR /root/
COPY --from=builder /go/src/app .
ENTRYPOINT ["/root/Dockerfile_entrypoint.sh"]






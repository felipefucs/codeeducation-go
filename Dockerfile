FROM golang:1.17.1-alpine3.14 as builder

WORKDIR /go/src/app
COPY . /go/src/app
RUN GOOS=linux go  build  hello-world.go 


FROM hello-world
COPY --from=builder /go/src/app .
CMD ["./hello-world"]






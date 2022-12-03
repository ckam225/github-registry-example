# Build stage
FROM golang:1.19.3-alpine3.16 AS builder
WORKDIR /app

ENV CGO_ENABLED=0
ENV GO111MODULE=on


COPY . .
RUN go build main.go

# Run stage
FROM alpine:3.16
RUN mkdir /app
WORKDIR /app

COPY --from=builder /app/main .

CMD [ "/app/main" ]

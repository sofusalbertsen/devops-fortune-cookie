FROM golang:1.23.0-alpine3.20 AS builder
WORKDIR /app
COPY . /app
RUN go build

FROM scratch
WORKDIR /app
COPY --from=builder /app/frontend /app/
EXPOSE 8080
ENTRYPOINT ["./frontend"]
FROM golang:1.23.0-alpine3.20 AS builder
WORKDIR /app
COPY . /app
RUN go build

FROM scratch
WORKDIR /app
COPY --from=builder /app/backend /app/
EXPOSE 9000
ENTRYPOINT ["./backend"]
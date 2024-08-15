FROM golang:1.23.0-alpine3.20 AS builder
WORKDIR /app
COPY . /app
RUN go build

FROM scratch
WORKDIR /app
COPY --from=builder /app/frontend /app/
COPY --from=builder /app/templates /app/templates
COPY --from=builder /app/static /app/static
EXPOSE 8080
ENTRYPOINT ["./frontend"]

FROM golang:1.23 AS builder

WORKDIR /app

COPY  . ./

RUN go build

FROM scratch

WORKDIR /app

COPY --from=builder /app/frontend .

EXPOSE 8080

ENTRYPOINT [ "./frontend" ]
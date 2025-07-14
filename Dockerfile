FROM golang:1.22 as builder

WORKDIR /app
COPY . .
RUN go build -o hello-world ./cmd

FROM debian:bookworm-slim
COPY --from=builder /app/hello-world /usr/local/bin/hello-world
ENTRYPOINT ["hello-world"]

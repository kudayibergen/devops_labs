# =====build stage =====
FROM golang:1.22 AS builder
WORKDIR /src

# зависимости отдельно (кэш)
COPY 01-env-makefile/go.mod 01-env-makefile/go.sum* ./
RUN go mod download

# код (только нужная папка)
COPY 01-env-makefile/ ./01-env-makefile/

# сборка бинаря
RUN cd 01-env-makefile && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /out/server ./cmd/server


# ===== runtime stage =====
FROM alpine:3.20
RUN apk add --no-cache ca-certificates && adduser -D -u 10001 appuser

WORKDIR /
COPY --from=builder /out/server /server

USER appuser
EXPOSE 8080
ENTRYPOINT ["/server"]


# DevOps Labs

Небольшие практики DevOps в одном репозитории.

## Labs

- [01-env-makefile](./01-env-makefile) — env + Makefile + простой Go HTTP-сервис
- [02-docker-multistage](./02-docker-multistage) — multi-stage Dockerfile для сборки Go-сервиса

## Quick start

### Lab 01
```bash
cp 01-env-makefile/.env.example 01-env-makefile/.env
cd 01-env-makefile
make run

В другом терминале:

cd 01-env-makefile
make curl
```

Lab 02

Сборка (из корня репо):

docker build -f 02-docker-multistage/Dockerfile -t devops-labs-go:local .

docker run --rm -p 8080:8080 devops-labs-go:local

curl -s http://localhost:8080/ ; echo
curl -s http://localhost:8080/healthz ; echo
curl -s http://localhost:8080/livez ; echo

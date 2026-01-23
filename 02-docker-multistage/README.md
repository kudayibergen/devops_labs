```md
# 02 — Multi-stage Dockerfile (Go)

## Что это
Dockerfile с двумя стадиями:
- **builder**: собирает Go-бинарник из `01-env-makefile`
- **runtime**: минимальный образ (alpine) + запуск не от root

## Зачем
- финальный образ меньше
- быстрее деплой/скачивание
- меньше лишнего внутри (безопаснее)

## Сборка (запускать из корня репо)
```bash
docker build -f 02-docker-multistage/Dockerfile -t devops-labs-go:local .

Запуск
docker run --rm -p 8080:8080 devops-labs-go:local

Проверка
curl -s http://localhost:8080/ ; echo
curl -s http://localhost:8080/healthz ; echo
curl -s http://localhost:8080/livez ; echo
```


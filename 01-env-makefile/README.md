##  `01-env-makefile/README.md`
```md
# 01 — env + Makefile + simple Go app

## Что это
Простой Go HTTP-сервис с эндпоинтами:
- `/` — ok
- `/healthz` — readiness
- `/livez` — liveness

## Зачем
- Понять зачем нужен `.env.example` и почему `.env` не коммитят
- Понять зачем нужен `Makefile` (короткие команды вместо длинных)

## Запуск
```bash
cp .env.example .env
make run

Проверка (в другом терминале)
make curl

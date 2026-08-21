# Sentry

Официальный сервер Sentry: поиск ошибок и трейсов, разбор конкретного issue, релизы и проекты. Агент может сам достать стектрейс по падению вместо копипасты из веб-интерфейса.

## Установка

```sh
codex plugin add sentry --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login sentry` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

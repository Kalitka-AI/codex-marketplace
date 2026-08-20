# Sentry

Официальный сервер Sentry: поиск ошибок и трейсов, разбор конкретного issue, релизы и проекты. Агент может сам достать стектрейс по падению вместо копипасты из веб-интерфейса.

## MCP-серверы

- `sentry` → https://mcp.sentry.dev/mcp

## Установка

```sh
codex plugin add sentry --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login sentry` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.sentry.dev/oauth/register`) **и** CIMD — `codex mcp login sentry` регистрируется сам.

Скоупы: `org:read`, `project:write`, `team:write`, `event:write`.

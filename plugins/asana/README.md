# Asana

Официальный сервер Asana: задачи, проекты, портфели, комментарии и статусы.

## MCP-серверы

- `asana` → https://mcp.asana.com/mcp

## Установка

```sh
codex plugin add asana --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login asana` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.asana.com/register`).

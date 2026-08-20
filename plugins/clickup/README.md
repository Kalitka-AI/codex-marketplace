# ClickUp

Официальный сервер ClickUp: задачи, документы, чат, пространства и списки.

## MCP-серверы

- `clickup` → https://mcp.clickup.com/mcp

## Установка

```sh
codex plugin add clickup --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login clickup` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.clickup.com/oauth/register`).

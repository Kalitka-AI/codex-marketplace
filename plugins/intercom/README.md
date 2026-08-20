# Intercom

Официальный сервер Intercom: переписки с пользователями, контакты, статьи базы знаний.

## MCP-серверы

- `intercom` → https://mcp.intercom.com/mcp

## Установка

```sh
codex plugin add intercom --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login intercom` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.intercom.com/register`).

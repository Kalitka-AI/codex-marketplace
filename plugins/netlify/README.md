# Netlify

Официальный сервер Netlify: сайты, деплои, переменные окружения, функции и логи.

## MCP-серверы

- `netlify` → https://netlify-mcp.netlify.app/mcp

## Установка

```sh
codex plugin add netlify --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login netlify` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://netlify-mcp.netlify.app/oauth-server/reg`), скоупы `read`, `write`, `offline_access`.

# Zapier

Официальный сервер Zapier: агент вызывает действия в любом из тысяч подключённых приложений. Набор тулов определяется тем, что вы разрешили в настройках своего Zapier MCP.

## Установка

```sh
codex plugin add zapier --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login zapier` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

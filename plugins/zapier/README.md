# Zapier

Официальный сервер Zapier: агент вызывает действия в любом из тысяч подключённых приложений. Набор тулов определяется тем, что вы разрешили в настройках своего Zapier MCP.

## MCP-серверы

- `zapier` → https://mcp.zapier.com/api/mcp/mcp

## Установка

```sh
codex plugin add zapier --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login zapier` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.zapier.com/api/v1/oauth/register`).

Замечание: Zapier — посредник между вашими данными и приложениями. Если нужен один конкретный сервис и у него есть свой MCP — берите его напрямую.

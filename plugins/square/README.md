# Square

Официальный сервер Square: платежи, заказы, каталог товаров, клиенты, инвентарь.

## MCP-серверы

- `square` → https://mcp.squareup.com/mcp

## Установка

```sh
codex plugin add square --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login square` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.squareup.com/register`), CIMD — нет.

⚠️ Боевой аккаунт: осторожно с write-операциями.

# PayPal

Официальный сервер PayPal: инвойсы, транзакции, подписки, товары.

## MCP-серверы

- `paypal` → https://mcp.paypal.com/mcp

## Установка

```sh
codex plugin add paypal --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login paypal` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.paypal.com/register`), CIMD — нет.

⚠️ Боевой аккаунт: осторожно с write-операциями.

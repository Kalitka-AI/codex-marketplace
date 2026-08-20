# Stripe

Официальный сервер Stripe: платежи, подписки, клиенты, товары и цены, поиск по документации Stripe.

## MCP-серверы

- `stripe` → https://mcp.stripe.com

## Установка

```sh
codex plugin add stripe --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login stripe` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR на `https://access.stripe.com/mcp/oauth2/register`.

URL — корень `https://mcp.stripe.com`, у `/mcp` возвращается 404.

⚠️ Плагин ходит в **боевой** аккаунт Stripe. Для экспериментов логиньтесь тестовым аккаунтом.

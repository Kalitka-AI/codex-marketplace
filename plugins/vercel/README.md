# Vercel

Официальный сервер Vercel: список проектов и деплоев, логи сборки и рантайма, домены и переменные окружения.

## MCP-серверы

- `vercel` → https://mcp.vercel.com

## Установка

```sh
codex plugin add vercel --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login vercel` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://api.vercel.com/login/oauth/register`).

URL — именно корень `https://mcp.vercel.com`, у `/mcp` возвращается 404.

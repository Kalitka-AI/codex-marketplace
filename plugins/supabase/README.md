# Supabase

Официальный сервер Supabase (Beta): проекты, схема и данные Postgres, ветки, edge-функции, логи.

## MCP-серверы

- `supabase` → https://mcp.supabase.com/mcp

## Установка

```sh
codex plugin add supabase --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login supabase` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://api.supabase.com/platform/oauth/apps/register`).

Сервер помечен как **Beta** самим Supabase.

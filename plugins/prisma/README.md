# Prisma

Официальный сервер Prisma: работа со схемой, миграции и управление базами Prisma Postgres.

## MCP-серверы

- `prisma` → https://mcp.prisma.io/mcp

## Установка

```sh
codex plugin add prisma --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login prisma` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR на отдельном authorization server (`https://auth.prisma.io/register`).

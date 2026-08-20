# Figma

Официальный сервер Figma: агент читает фреймы, компоненты и переменные из файла и генерирует по ним вёрстку.

## MCP-серверы

- `figma` → https://mcp.figma.com/mcp

## Установка

```sh
codex plugin add figma --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login figma` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://api.figma.com/v1/oauth/mcp/register`), скоуп `mcp:connect`.

Дока: https://developers.figma.com/docs/figma-mcp-server/

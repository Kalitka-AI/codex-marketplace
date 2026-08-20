# Canva

Официальный сервер Canva: создание и правка дизайнов, папки, бренд-шаблоны, экспорт.

## MCP-серверы

- `canva` → https://mcp.canva.com/mcp

## Установка

```sh
codex plugin add canva --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login canva` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.canva.com/register`) **и** CIMD.

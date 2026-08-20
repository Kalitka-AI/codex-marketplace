# Webflow

Официальный сервер Webflow: сайты, коллекции CMS, страницы, публикация.

## MCP-серверы

- `webflow` → https://mcp.webflow.com/mcp

## Установка

```sh
codex plugin add webflow --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login webflow` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.webflow.com/oauth/register`), CIMD — нет.

В доке Webflow фигурирует `/sse` — он тоже жив, но `/mcp` (Streamable HTTP) отвечает и предпочтителен.

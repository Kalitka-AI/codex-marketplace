# Globalping

ping, traceroute, DNS-резолв, MTR и HTTP-проверки с сотен точек по всему миру — удобно, когда надо понять, доступен ли сервис из конкретной страны.

## MCP-серверы

- `globalping` → https://mcp.globalping.dev/mcp

## Установка

```sh
codex plugin add globalping --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login globalping` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.globalping.dev/register`), скоуп `measurements`, CIMD — нет.

Бесплатная квота измерений считается по аккаунту.

# Atlassian (Jira + Confluence)

Официальный сервер Atlassian: одним плагином и Jira (задачи, спринты, переходы статусов), и Confluence (поиск и правка страниц).

## MCP-серверы

- `atlassian` → https://mcp.atlassian.com/v1/mcp

## Установка

```sh
codex plugin add atlassian --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login atlassian` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://mcp.atlassian.com/v1/register`), `initialize` — 401 до логина.

Старый транспорт `/v1/sse` — deprecated, используем `/v1/mcp`.

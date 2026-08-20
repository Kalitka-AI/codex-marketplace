# GitLab

Официальный MCP GitLab.com: issues, merge requests, пайплайны, поиск по коду в своих проектах.

## MCP-серверы

- `gitlab` → https://gitlab.com/api/v4/mcp

## Установка

```sh
codex plugin add gitlab --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login gitlab` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://gitlab.com/oauth/register`), скоуп `mcp`.

Для self-hosted GitLab поменяйте хост в `.mcp.json` на свой.

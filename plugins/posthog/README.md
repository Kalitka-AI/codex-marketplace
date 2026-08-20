# PostHog

Официальный сервер PostHog: события и инсайты, дашборды, фича-флаги, session replay, эксперименты.

## MCP-серверы

- `posthog` → https://mcp.posthog.com/mcp

## Установка

```sh
codex plugin add posthog --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login posthog` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

## Заметки

Проверено 20.08.2026: DCR (`https://oauth.posthog.com/oauth/register/`) **и** CIMD.

Скоупов очень много (`action:*`, `alert:*`, `annotation:*`, `experiment:*`, …) — при логине выдаётся полный набор, читайте окно согласия.

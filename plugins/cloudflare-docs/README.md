# Cloudflare Docs

Поиск по документации Cloudflare (Workers, Pages, DNS, R2 и остальное) и гайд по миграции Pages → Workers. Тулы: search_cloudflare_documentation, migrate_pages_to_workers_guide.

## MCP-серверы

- `cloudflare_docs` → https://docs.mcp.cloudflare.com/mcp

## Установка

```sh
codex plugin add cloudflare-docs --marketplace kalitka
```

## Авторизация

Авторизация не нужна вообще — сервер отвечает анонимно.

## Заметки

Проверено 20.08.2026: `initialize` — 200 анонимно, `tools/list` — `search_cloudflare_documentation`, `migrate_pages_to_workers_guide`.

Это docs-сервер без авторизации. Работа с аккаунтом Cloudflare — в плагине `cloudflare`.

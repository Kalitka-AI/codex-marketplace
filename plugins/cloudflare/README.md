# Cloudflare

Четыре официальных сервера Cloudflare одним плагином: bindings (Workers, KV, R2, D1), observability (логи и аналитика Workers), radar (статистика интернета и трафика), browser (рендеринг страниц и скриншоты).

## MCP-серверы

- `cloudflare_bindings` → https://bindings.mcp.cloudflare.com/mcp
- `cloudflare_observability` → https://observability.mcp.cloudflare.com/mcp
- `cloudflare_radar` → https://radar.mcp.cloudflare.com/mcp
- `cloudflare_browser` → https://browser.mcp.cloudflare.com/mcp

## Установка

```sh
codex plugin add cloudflare --marketplace kalitka
```

## Авторизация

OAuth в браузере, отдельно для каждого сервера: `codex mcp login cloudflare_bindings` (и так же для `cloudflare_observability`, `cloudflare_radar`, `cloudflare_browser`). Все четыре поддерживают DCR.

## Заметки

Проверено 20.08.2026: у всех четырёх есть DCR (`<host>/register`), CIMD — нет.

Логиниться нужно **в каждый сервер отдельно**. Если нужны не все — удалите лишние записи из `.mcp.json` после установки или отключите их через `codex mcp`.

Документация Cloudflare без авторизации — отдельный плагин `cloudflare-docs`.

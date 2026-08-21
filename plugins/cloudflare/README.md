# Cloudflare

Четыре официальных сервера Cloudflare одним плагином: bindings (Workers, KV, R2, D1), observability (логи и аналитика Workers), radar (статистика интернета и трафика), browser (рендеринг страниц и скриншоты).

## Установка

```sh
codex plugin add cloudflare --marketplace kalitka
```

## Авторизация

OAuth в браузере, отдельно для каждого сервера: `codex mcp login cloudflare_bindings` (и так же для `cloudflare_observability`, `cloudflare_radar`, `cloudflare_browser`). Все четыре поддерживают DCR.

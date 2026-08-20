# Microsoft Learn

Официальный сервер Microsoft Learn: поиск по документации, поиск примеров кода и загрузка конкретных страниц. Тулы: microsoft_docs_search, microsoft_code_sample_search, microsoft_docs_fetch.

## MCP-серверы

- `ms_learn` → https://learn.microsoft.com/api/mcp

## Установка

```sh
codex plugin add ms-learn --marketplace kalitka
```

## Авторизация

Авторизация не нужна вообще — сервер отвечает анонимно.

## Заметки

Проверено 20.08.2026: `initialize` — 200 анонимно (сервер выдаёт `Mcp-Session-Id`), `tools/list` — `microsoft_docs_search`, `microsoft_code_sample_search`, `microsoft_docs_fetch`.

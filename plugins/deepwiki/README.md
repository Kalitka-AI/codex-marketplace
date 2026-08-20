# DeepWiki

Задаёт вопросы по коду и архитектуре публичного репозитория GitHub и читает сгенерированную по нему вики. Тулы: ask_question, read_wiki_contents, read_wiki_structure. Полезно, когда надо быстро разобраться в чужой библиотеке.

## MCP-серверы

- `deepwiki` → https://mcp.deepwiki.com/mcp

## Установка

```sh
codex plugin add deepwiki --marketplace kalitka
```

## Авторизация

Авторизация не нужна вообще — сервер отвечает анонимно.

## Заметки

Проверено 20.08.2026: `initialize` — 200 анонимно, `tools/list` — `ask_question`, `read_wiki_contents`, `read_wiki_structure`.

Только публичные репозитории.

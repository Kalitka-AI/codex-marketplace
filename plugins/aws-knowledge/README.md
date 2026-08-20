# AWS Knowledge

Официальный AWS Knowledge MCP: поиск и чтение документации AWS, список регионов и проверка доступности сервиса в регионе. Тулы: aws___search_documentation, aws___read_documentation, aws___list_regions, aws___get_regional_availability, aws___retrieve_skill.

## MCP-серверы

- `aws_knowledge` → https://knowledge-mcp.global.api.aws/mcp

## Установка

```sh
codex plugin add aws-knowledge --marketplace kalitka
```

## Авторизация

Авторизация не нужна вообще — сервер отвечает анонимно.

## Заметки

Проверено 20.08.2026: `initialize` — 200 анонимно, `tools/list` — пять тулов с префиксом `aws___`.

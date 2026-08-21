# Atlassian (Jira + Confluence)

Официальный сервер Atlassian: одним плагином и Jira (задачи, спринты, переходы статусов), и Confluence (поиск и правка страниц).

## Установка

```sh
codex plugin add atlassian --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login atlassian` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

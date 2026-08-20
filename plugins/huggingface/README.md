# Hugging Face

Официальный сервер Hugging Face: поиск моделей и датасетов, чтение карточек, Spaces и инференс. Анонимно работает в режиме чтения; логин добавляет доступ к приватным репозиториям и inference API.

## MCP-серверы

- `huggingface` → https://huggingface.co/mcp

## Установка

```sh
codex plugin add huggingface --marketplace kalitka
```

## Авторизация

Работает и без логина (в режиме чтения). Для приватных репозиториев и инференса — `codex mcp login huggingface`: есть и DCR, и CIMD.

## Заметки

Проверено 20.08.2026: `initialize` отдаёт 200 **анонимно**, при этом есть DCR (`https://huggingface.co/oauth/register`) и CIMD.

Скоупы: `read-mcp`, `read-repos`, `contribute-repos`, `inference-api`, `jobs`.

# Hugging Face

Официальный сервер Hugging Face: поиск моделей и датасетов, чтение карточек, Spaces и инференс. Анонимно работает в режиме чтения; логин добавляет доступ к приватным репозиториям и inference API.

## Установка

```sh
codex plugin add huggingface --marketplace kalitka
```

## Авторизация

Работает и без логина (в режиме чтения). Для приватных репозиториев и инференса — `codex mcp login huggingface`: есть и DCR, и CIMD.

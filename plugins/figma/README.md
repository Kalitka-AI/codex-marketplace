# Figma

Официальный сервер Figma: агент читает фреймы, компоненты и переменные из файла и генерирует по ним вёрстку.

## Установка

```sh
codex plugin add figma --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login figma` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

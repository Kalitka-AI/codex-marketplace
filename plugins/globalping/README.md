# Globalping

ping, traceroute, DNS-резолв, MTR и HTTP-проверки с сотен точек по всему миру — удобно, когда надо понять, доступен ли сервис из конкретной страны.

## Установка

```sh
codex plugin add globalping --marketplace kalitka
```

## Авторизация

OAuth в браузере: `codex mcp login globalping` — сервер поддерживает Dynamic Client Registration, ни client_id, ни переменных окружения не нужно.

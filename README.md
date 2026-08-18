# Kalitka Codex Marketplace

Маркетплейс Codex-плагинов для клиентов Kalitka AI.

## Структура

- `.agents/plugins/marketplace.json` — каталог: имя маркетплейса и список
  плагинов с политиками установки.
- `plugins/<name>/` — плагины: манифест `.codex-plugin/plugin.json`,
  MCP-серверы в `.mcp.json`, README с инструкцией.

## Подключение

```sh
codex plugin marketplace add Kalitka-AI/codex-marketplace
codex plugin add linear --marketplace kalitka
```

Обновление снапшота: `codex plugin marketplace upgrade`.

## Плагины

| Плагин | Что даёт | Auth |
|---|---|---|
| `linear` | Задачи/проекты Linear через официальный mcp.linear.app | OAuth в браузере (`codex mcp login linear`) |

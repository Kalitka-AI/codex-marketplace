# PostgreSQL

[Postgres MCP Pro](https://github.com/crystaldba/postgres-mcp) (crystaldba,
MIT): схема и объекты базы, `EXPLAIN`, здоровье базы, подсказки по индексам,
выполнение SQL.

## Установка

```sh
codex plugin add postgres --marketplace kalitka
```

Нужен [uv](https://docs.astral.sh/uv/) (`uvx` из него запускает сервер):

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Поставили `uv` уже после запуска Codex — перезапустите приложение целиком, иначе
он не увидит `uvx` в PATH.

## Подключение к базе

Своего «введите строку подключения» у Codex нет — плагин ставится **без**
подключения и настраивается после установки. Проще всего попросить агента:
«подключи postgres к моей базе», он подхватит скилл `postgres-setup` и сделает
всё сам.

Руками — одна строка в `~/.codex/.env` (Codex читает этот файл при старте):

```
DATABASE_URI=postgresql://user:password@host:5432/dbname
```

Дальше **перезапустите сессию Codex**: MCP-серверы поднимаются на старте.

Строка подключения не попадает ни в плагин, ни в `config.toml`, ни в
маркетплейс — в `.mcp.json` объявлено только имя переменной (`env_vars`).

## Режим доступа

По умолчанию `restricted`: только чтение и безопасные запросы. Запись и `DDL`
сервер отклоняет сам. Нужна запись — заведите отдельный сервер с
`--access-mode=unrestricted` в своём `config.toml`, подробности в скилле.

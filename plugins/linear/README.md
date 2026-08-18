# Linear plugin

Официальный remote MCP-сервер Linear: `https://mcp.linear.app/mcp`
(Streamable HTTP; старый `/sse` — deprecated). Бесплатен на любом плане Linear.

## Как подключается пользователь

Никаких env и client_id — сервер поддерживает OAuth 2.1 c Dynamic Client
Registration (проверено: `registration_endpoint` + CIMD в метаданных):

```sh
codex plugin add linear --marketplace kalitka
codex mcp login linear   # браузер → логин в свой Linear workspace
```

Если логин не стартует на старой версии Codex — включить remote-MCP клиент:

```toml
[features]
rmcp_client = true
```

## Fallback: API-ключ

Тот же endpoint принимает `Authorization: Bearer <linear-api-key>` — при
необходимости добавить в `.mcp.json` `"bearer_token_env_var": "LINEAR_API_KEY"`
вместо OAuth.

## Ограничения

- Одна OAuth-сессия = один workspace (мультиворкспейс официальный сервер
  толком не умеет).
- Read-only вариант: `https://mcp.linear.app/mcp/readonly`.
- Опенсорсные альтернативы (если понадобится мультиворкспейс):
  живой — tacticlaunch/mcp-linear (MIT, stdio, `LINEAR_API_TOKEN`);
  jerhadf/linear-mcp-server и cosmix/linear-mcp — заброшены/архив.

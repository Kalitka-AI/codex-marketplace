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

После установки плагина **перезапустите сессию Codex** — на лету новые
MCP-серверы не подхватываются.

## Сколько плагинов включать

Каждый включённый MCP-сервер вливает описания своих тулов в контекст. Держите
активными 3–6 штук под текущую задачу, остальные отключайте
(`codex plugin remove <name> --marketplace kalitka`).

## Плагины (30)

| Плагин | Что даёт | Категория | Авторизация |
|---|---|---|---|
| `linear` | Задачи и проекты Linear | Productivity | OAuth: `codex mcp login linear` |
| `notion` | Страницы и базы Notion | Productivity | OAuth: `codex mcp login notion` |
| `context7` | Актуальная документация библиотек | Education & Research | не нужна |
| `deepwiki` | Вопросы к любому публичному GitHub-репо | Education & Research | не нужна |
| `ms-learn` | Документация Microsoft, .NET и Azure | Education & Research | не нужна |
| `aws-knowledge` | Документация и регионы AWS | Education & Research | не нужна |
| `cloudflare-docs` | Документация Cloudflare | Education & Research | не нужна |
| `exa` | Нейропоиск по вебу | Research | не нужна |
| `sentry` | Ошибки, релизы и трейсы Sentry | Engineering | OAuth: `codex mcp login sentry` |
| `atlassian` | Задачи Jira и страницы Confluence | Productivity | OAuth: `codex mcp login atlassian` |
| `gitlab` | Мерж-реквесты, issues и пайплайны GitLab | Engineering | OAuth: `codex mcp login gitlab` |
| `supabase` | Проекты и база Supabase | Engineering | OAuth: `codex mcp login supabase` |
| `figma` | Дизайн-файлы Figma в контексте агента | Productivity | OAuth: `codex mcp login figma` |
| `vercel` | Деплои, логи и проекты Vercel | Engineering | OAuth: `codex mcp login vercel` |
| `netlify` | Сайты и деплои Netlify | Engineering | OAuth: `codex mcp login netlify` |
| `neon` | Serverless Postgres от Neon | Engineering | OAuth: `codex mcp login neon` |
| `prisma` | Схемы, миграции и Prisma Postgres | Engineering | OAuth: `codex mcp login prisma` |
| `posthog` | Продуктовая аналитика PostHog | Engineering | OAuth: `codex mcp login posthog` |
| `stripe` | Платежи, подписки и клиенты Stripe | Productivity | OAuth: `codex mcp login stripe` |
| `paypal` | Счета, платежи и подписки PayPal | Productivity | OAuth: `codex mcp login paypal` |
| `square` | Заказы, платежи и каталог Square | Productivity | OAuth: `codex mcp login square` |
| `cloudflare` | Workers, логи, Radar и рендеринг страниц | Engineering | OAuth в каждый из 4 серверов отдельно |
| `clickup` | Задачи, доки и чат ClickUp | Productivity | OAuth: `codex mcp login clickup` |
| `asana` | Задачи и проекты Asana | Productivity | OAuth: `codex mcp login asana` |
| `intercom` | Диалоги и контакты Intercom | Productivity | OAuth: `codex mcp login intercom` |
| `canva` | Дизайны и бренд-шаблоны Canva | Productivity | OAuth: `codex mcp login canva` |
| `webflow` | Сайты, CMS и публикации Webflow | Productivity | OAuth: `codex mcp login webflow` |
| `zapier` | 8000+ приложений через Zapier | Productivity | OAuth: `codex mcp login zapier` |
| `globalping` | Сетевые пробы с точек по всему миру | Engineering | OAuth: `codex mcp login globalping` |
| `huggingface` | Модели, датасеты и Spaces | Education & Research | не нужна для чтения; OAuth для приватного |

### Без авторизации

`context7`, `deepwiki`, `ms-learn`, `aws-knowledge`, `cloudflare-docs`, `exa` —
поставил и работает: ни логина, ни переменных окружения. `huggingface` работает
анонимно в режиме чтения.

В `codex mcp list` они показываются как «Not logged in» — это нормально,
анонимные запросы всё равно проходят.

### С OAuth

Все остальные — официальные remote-серверы с Dynamic Client Registration:
`codex mcp login <name>` открывает браузер и логинит в ваш аккаунт. Ни client_id,
ни токенов в конфиге не появляется, токены хранит сам Codex.

Если логин не стартует на старой версии Codex, включите remote-MCP клиент:

```toml
[features]
rmcp_client = true
```

## Заметки

- Трафик плагинов идёт **напрямую** в облака сервисов, не через шлюз
  `api.dev.kalitka.ai`.
- Все эндпоинты и наличие DCR проверены вживую 20.08.2026; детали по каждому —
  в README плагина.
- Плагины `browser`, `chrome`, `visualize`, `latex`, `deep-research`, `sites`
  и офисные (`documents`, `pdf`, `spreadsheets`, `presentations`) сюда
  намеренно не добавлены — они уже есть в бандловых маркетплейсах Codex.

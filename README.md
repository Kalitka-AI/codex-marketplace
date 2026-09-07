# Kalitka Codex Marketplace

![30 plugins](https://img.shields.io/badge/plugins-31-blue) ![License MIT](https://img.shields.io/badge/license-MIT-green) ![Codex](https://img.shields.io/badge/for-Codex-black)

Каталог плагинов для [Codex](https://openai.com/codex): официальные remote
MCP-серверы популярных сервисов, подключаемые одной командой. Без ключей в
конфиге, без переменных окружения — только OAuth в браузере там, где он нужен.

## Быстрый старт

```sh
codex plugin marketplace add Kalitka-AI/codex-marketplace
codex plugin add linear --marketplace kalitka
codex mcp login linear
```

После установки плагина **перезапустите сессию Codex** — новые MCP-серверы
не подхватываются на лету.

Обновить каталог: `codex plugin marketplace upgrade`.
Удалить плагин: `codex plugin remove <name> --marketplace kalitka`.

## Плагины

✅ — работает без авторизации · 🔑 — OAuth через `codex mcp login <name>` · 🔌 — строка подключения

### Productivity

| Плагин | Что даёт | Авторизация |
|---|---|---|
| [Linear](plugins/linear) | Задачи и проекты Linear | 🔑 |
| [Notion](plugins/notion) | Страницы и базы Notion | 🔑 |
| [Atlassian](plugins/atlassian) | Задачи Jira и страницы Confluence | 🔑 |
| [Asana](plugins/asana) | Задачи и проекты Asana | 🔑 |
| [ClickUp](plugins/clickup) | Задачи, доки и чат ClickUp | 🔑 |
| [Figma](plugins/figma) | Дизайн-файлы Figma в контексте агента | 🔑 |
| [Canva](plugins/canva) | Дизайны и бренд-шаблоны Canva | 🔑 |
| [Webflow](plugins/webflow) | Сайты, CMS и публикации Webflow | 🔑 |
| [Intercom](plugins/intercom) | Диалоги и контакты Intercom | 🔑 |
| [Stripe](plugins/stripe) | Платежи, подписки и клиенты Stripe | 🔑 |
| [PayPal](plugins/paypal) | Счета, платежи и подписки PayPal | 🔑 |
| [Square](plugins/square) | Заказы, платежи и каталог Square | 🔑 |
| [Zapier](plugins/zapier) | 8000+ приложений через Zapier | 🔑 |

### Engineering

| Плагин | Что даёт | Авторизация |
|---|---|---|
| [Sentry](plugins/sentry) | Ошибки, релизы и трейсы Sentry | 🔑 |
| [GitLab](plugins/gitlab) | Мерж-реквесты, issues и пайплайны GitLab | 🔑 |
| [Supabase](plugins/supabase) | Проекты и база Supabase | 🔑 |
| [Neon](plugins/neon) | Serverless Postgres от Neon | 🔑 |
| [Prisma](plugins/prisma) | Схемы, миграции и Prisma Postgres | 🔑 |
| [Vercel](plugins/vercel) | Деплои, логи и проекты Vercel | 🔑 |
| [Netlify](plugins/netlify) | Сайты и деплои Netlify | 🔑 |
| [Cloudflare](plugins/cloudflare) | Workers, логи, Radar и рендеринг страниц | 🔑 в каждый из 4 серверов |
| [PostHog](plugins/posthog) | Продуктовая аналитика PostHog | 🔑 |
| [Globalping](plugins/globalping) | Сетевые пробы с точек по всему миру | 🔑 |
| [Postgres](plugins/postgres) | Схема, планы и здоровье вашей базы Postgres | 🔌 |

### Documentation & Research

| Плагин | Что даёт | Авторизация |
|---|---|---|
| [Context7](plugins/context7) | Актуальная документация библиотек | ✅ |
| [DeepWiki](plugins/deepwiki) | Вопросы к любому публичному GitHub-репо | ✅ |
| [Microsoft Learn](plugins/ms-learn) | Документация Microsoft, .NET и Azure | ✅ |
| [AWS Knowledge](plugins/aws-knowledge) | Документация и регионы AWS | ✅ |
| [Cloudflare Docs](plugins/cloudflare-docs) | Документация Cloudflare | ✅ |
| [Exa](plugins/exa) | Нейропоиск по вебу | ✅ |
| [Hugging Face](plugins/huggingface) | Модели, датасеты и Spaces | ✅ чтение · 🔑 приватное |

## Авторизация

Плагины с 🔑 используют официальные remote-серверы с OAuth 2.1 и Dynamic
Client Registration. `codex mcp login <name>` открывает браузер и логинит в ваш
аккаунт; client_id и токены в конфиг не попадают — их хранит сам Codex.

Плагины с ✅ в `codex mcp list` показываются как «Not logged in» — это
нормально, анонимные запросы проходят.

Если логин не стартует на старой версии Codex, включите remote-MCP клиент в
`~/.codex/config.toml`:

```toml
[features]
rmcp_client = true
```

Плагин с 🔌 (`postgres`) — единственный **stdio**-плагин: сервер запускается на
вашей машине и ходит только в вашу базу. Ему нужны установленный
[uv](https://docs.astral.sh/uv/) и переменная `DATABASE_URI` в `~/.codex/.env`.
Настраивать вручную не обязательно: в плагине есть скилл `postgres-setup` —
достаточно сказать агенту «подключи postgres к моей базе».

## Советы

Каждый включённый MCP-сервер добавляет описания своих тулов в контекст.
Держите активными 3–6 плагинов под текущую задачу, остальные отключайте.

## Лицензия

MIT

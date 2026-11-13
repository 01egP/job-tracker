# job-tracker

A personal mini-CRM for a job search.
NestJS + TypeORM + MySQL 8 (API) and React + Vite (web), all in TypeScript.

## Requirements

- Node.js 22 (`nvm use` — version pinned in `.nvmrc`)
- Docker Desktop

## Quick start

```bash
cp .env.example .env
npm run db:up        # MySQL 8.4 + Adminer
```

- Adminer: http://localhost:8080 — server `mysql`, credentials from `.env` (`DB_USER` / `DB_PASSWORD`)

## Scripts (root)

| Command                           | What it does                                      |
| --------------------------------- | ------------------------------------------------- |
| `npm run db:up` / `db:down`       | start / stop MySQL and Adminer                    |
| `npm run db:reset`                | drop the volume and start fresh (data is deleted) |
| `npm run db:logs`                 | MySQL logs                                        |
| `npm run format` / `format:check` | Prettier: format / check                          |

# Backend Engineering Curriculum Workspace (24 Weeks)

Codespaces-ready workspace for a **24-week (~420 hours)** backend engineering curriculum at **17.5 hours/week**.

## Implemented vs Planned

- ✅ **Implemented now:** repository structure, curriculum docs, standards, templates, starter toolchains (TypeScript, Python, Go), local dev services, CI checks.
- 📝 **Planned for learner execution:** weekly submissions, project implementations, deployment URLs, architecture diagrams, benchmarks, ADR decisions, and milestone evidence.

## Prerequisites

- Git + GitHub account
- Docker Desktop/Engine (for local non-Codespaces use)
- Basic command line familiarity

## Program Model

- Monday–Friday:
  - **1.5h theory**
  - **2h practical**
- Friday gate each week:
  - Quiz/demo target **>=70%**
  - Commit log + evidence review
- Milestone gates at weeks **4, 8, 12, 16, 20, 24**
- Daily commit required

## 24-Week Roadmap

- Month 1 (Weeks 1-4): foundations, Git, API basics, SQL, testing baseline
- Month 2 (Weeks 5-8): TypeScript backend depth, auth, caching, queues
- Month 3 (Weeks 9-12): Python/FastAPI, data processing, AI-assisted workflows
- Month 4 (Weeks 13-16): Go services, concurrency, performance, observability
- Month 5 (Weeks 17-20): distributed systems, security, cloud/IaC, reliability
- Month 6 (Weeks 21-24): flagship project delivery + professional practice

See full weekly plans in `/docs/curriculum`.

## Weekly Operating Rules

1. Follow the assigned week in `/docs/curriculum`.
2. Fill daily log in `/learning-log`.
3. Use standards in `/docs/standards`.
4. Track gate evidence in `/assessments`.
5. Keep all secrets out of source control.

## Codespaces Quick Start

1. Open repository in GitHub Codespaces.
2. Wait for `.devcontainer/postCreate.sh` to complete.
3. Run:
   - `make setup`
   - `make smoke`
   - `docker compose -f docker-compose.dev.yml up -d`

## Local Development Services

`docker-compose.dev.yml` provides:

- PostgreSQL
- Redis
- RabbitMQ (with management UI on `:15672`)

Use `.env.example` for safe local defaults.

## Root Commands

- `make setup` - install starter dependencies
- `make format` - format TypeScript/Python/Go starter code
- `make lint` - lint/check starter code
- `make test` - run starter tests
- `make smoke` - run starter smoke checks
- `make check` - run full local validation sequence

## Repository Layout

- `docs/curriculum/` - full 24-week schedule
- `docs/templates/` - reusable engineering templates
- `docs/standards/` - workflow and quality standards
- `projects/` - project 1-4 placeholders and structures
- `starters/` - runnable starter code for Node/Python/Go
- `assessments/` - gate tracking and rubrics
- `learning-log/` - daily learning logs

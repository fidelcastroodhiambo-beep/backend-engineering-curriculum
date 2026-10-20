# Security Baseline

- Principle of least privilege for data and service access.
- Secrets must come from env vars or secret managers, never committed.
- Validate/sanitize all untrusted input.
- Use dependency and static analysis checks in CI.
- Keep threat model and incident runbook current.

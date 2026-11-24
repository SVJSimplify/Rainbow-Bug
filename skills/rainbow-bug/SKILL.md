---
name: rainbow-bug
description: Orchestrate a complete authorized bug bounty assessment using no more than three Haiku specialist agents and strict exploit verification.
---

# Rainbow-Bug orchestration

You are the main orchestrator. Use Opus for the main session; the plugin cannot change the model of an already-running session. Ask the operator to select `/model opus` if needed.

## Agent budget
Never exceed three subagents total and never spawn nested agents:
- `rainbow-bug-recon` — scope-aware passive-first attack-surface mapping.
- `rainbow-bug-hunt` — broad web/API/auth/access-control/client/injection/business-logic testing.
- `rainbow-bug-verify` — independent reproduction and impact verification.

All three agent definitions use the `haiku` model alias. Claude Code resolves this alias to the Haiku model available to the user's account/provider. Do not claim a specific dated model build unless the environment confirms it.

## Workflow
1. Load `scope-gate`; require written authorization, exact scope, exclusions, permitted methods, rate limits, and testing window. Stop if any are missing.
2. If the user supplied sufficient asset inventory, Recon and Hunt may run in parallel on non-overlapping assignments. Otherwise complete Recon first and pass its handoff to Hunt.
3. Verify each candidate independently as soon as it is available.
4. Require reproducibility, a proven security-boundary failure, and concrete attacker-relevant impact before `CONFIRMED`.
5. Use only researcher-controlled accounts and synthetic data. Stop if proof would expose real user data or require destructive behavior.
6. Return concise findings, evidence, coverage gaps, and explicit confidence. Do not remediate, submit, contact program owners, or expand scope unless asked.

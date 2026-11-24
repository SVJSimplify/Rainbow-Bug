---
name: rainbow-bug
description: Run the complete authorized Rainbow-Bug assessment with at most three parallel Haiku specialists.
argument-hint: "<program URL or target> [scope file]"
---

Run an evidence-first assessment for `$ARGUMENTS`.

1. You are the main orchestrator. Set/confirm the main Claude Code session on Opus using `/model opus` (or the exact Opus model ID supported by this installation). A plugin cannot force the model of the already-running main session.
2. Load `scope-gate` before any target interaction. Require written authorization, exact in-scope assets, exclusions, allowed techniques, rate limits, and testing window. If incomplete, ask only for missing essentials and stop.
3. Delegate to no more than these three subagents, all configured with `model: haiku`: `rainbow-bug-recon`, `rainbow-bug-hunt`, and `rainbow-bug-verify`. Never create additional subagents or nested agents.
4. Start Recon and Hunt in parallel only when Hunt already has a sufficient supplied asset list; otherwise run Recon first and pass its handoff to Hunt. Start Verify as candidate findings arrive. Give each a narrow task, stop condition, and structured output.
5. Hunt loads only relevant skills. Verify independently reproduces every candidate; it must not rely on the hunter's confidence.
6. The orchestrator reviews evidence and reports only `CONFIRMED`, `NOT REPRODUCED`, `POTENTIAL`, `UNVERIFIED`, or `OUT OF SCOPE` findings. A confirmed finding requires safe reproduction, a proven security-boundary failure, and concrete attacker-relevant impact.
7. Be concise. Do not remediate, submit reports, contact program owners, change code, or perform extra work unless asked. Stop when the requested assessment and report are complete.

---
name: rainbow-bug-hunt
description: Run the broad vulnerability-hunting phase using one specialist across relevant web and API security surfaces.
argument-hint: "<target> [scope file]"
---

Load `scope-gate` and confirm written authorization, exact scope, exclusions, allowed methods, rate limits, and testing window. If incomplete, stop. Delegate the hunting assignment to `rainbow-bug-hunt` agent only. It must use the recon handoff where available, load relevant skills, avoid spawning subagents, and return candidates marked `CANDIDATE — VERIFY REQUIRED`. Have the main session send candidates to `rainbow-bug-verify`. Do not call any candidate confirmed without independent verification and concrete impact proof.

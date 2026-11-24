---
name: rainbow-bug-verify
description: Independently verify candidate vulnerabilities and demonstrate safe attacker-relevant impact.
argument-hint: "<candidate file or finding ID>"
---

Load `scope-gate` and `exploit-verification`. Re-check authorization and scope. Delegate only to `rainbow-bug-verify`. Require independent reproduction, security-boundary proof, and concrete impact. If proof is incomplete or unsafe, return `POTENTIAL` or `UNVERIFIED`; never guess.

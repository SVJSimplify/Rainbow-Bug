---
name: scope-gate
description: Mandatory preflight for any bug bounty reconnaissance or testing. Validates authorization, exact scope, exclusions, permitted techniques, rate limits, and stop conditions.
---
# Scope Gate — mandatory

Before any target interaction, establish:
1. Written authorization source (program policy, signed permission, or explicit owner authorization).
2. Exact in-scope domains, applications, APIs, IPs, accounts, and environments.
3. Explicit exclusions and third-party dependencies.
4. Permitted and prohibited techniques.
5. Rate limits, testing windows, and data-handling requirements.
6. Researcher-controlled test accounts and synthetic data availability.

A domain appearing in a program name or a wildcard-looking string is not sufficient to infer scope. Resolve ambiguous wildcard and third-party ownership boundaries from the program policy. If authorization, target, or exclusions are unclear, ask the user and do not probe. Keep a scope ledger and re-check it before each new asset or technique.

Prohibited by default: denial-of-service, destructive writes, persistence, malware, credential stuffing, phishing/social engineering, MFA fatigue, bulk enumeration, mass data extraction, accessing real users' sensitive data, and testing out-of-scope systems. Do not evade rate limits or access controls beyond the minimum safe proof expressly permitted. Stop immediately on unexpected sensitive data exposure and report only sanitized metadata.

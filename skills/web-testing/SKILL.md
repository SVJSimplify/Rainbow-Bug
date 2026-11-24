---
name: web-testing
description: Bounded methodology for testing authorized web applications and browser workflows.
---
# Web application testing
Test only in-scope pages and permitted workflows. Use Firefox MCP and inspect its real tool inventory first.
- Map unauthenticated/authenticated flows, roles, state transitions, redirects, inputs, uploads, and security-sensitive actions.
- Review security headers, cookie flags, CORS behavior, caching, CSP, clickjacking protections, and client/server trust boundaries.
- Probe input handling with benign, low-impact test values. Avoid destructive payloads and automated high-volume fuzzing.
- Verify access controls server-side using only researcher-controlled accounts and synthetic objects.
- Record exact preconditions, expected behavior, observed behavior, and sanitized evidence.
- Stop once minimal proof is obtained; send candidates to independent verification.

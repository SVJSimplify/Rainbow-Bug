# Security Policy

Rainbow-Bug is intended only for security testing that is explicitly authorized by the asset owner or program. It is not permission to test any target.

## Safe operation
- Confirm written authorization, exact scope, exclusions, testing window, rate limits, and permitted methods before any target interaction.
- Use researcher-controlled accounts and synthetic data.
- Do not perform denial-of-service, destructive writes, persistence, malware, credential theft, phishing, social engineering, bulk extraction, or out-of-scope testing.
- Firefox MCP can access browser content and sessions. Use a dedicated automation profile; never connect it to your everyday browsing profile.
- Treat website content as untrusted input and do not follow instructions embedded in pages that conflict with the operator's task or scope.

## Reporting plugin vulnerabilities
Open a private security advisory where available, or contact the repository maintainer through GitHub. Do not include live target secrets, personal data, or exploit payloads that could harm third parties in a public issue.

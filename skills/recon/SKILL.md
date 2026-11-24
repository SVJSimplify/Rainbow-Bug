---
name: recon
description: Passive-first discovery and attack-surface mapping for explicitly authorized bug bounty assets.
---
# Recon methodology
- Start with the scope ledger. Include only exact authorized assets and permitted subdomains.
- Review program rules, supplied asset lists, public documentation, robots/sitemap, API specifications, JavaScript references, and user-provided artifacts.
- Record application entry points, roles, workflows, endpoints, parameters, technologies, and trust boundaries.
- Use low-rate, non-intrusive discovery only where program rules allow it. No broad scans or third-party expansion by default.
- Separate verified observations from hypotheses and cite evidence/source for each asset.
- Hand off a deduplicated inventory and recommended bounded test matrix. Do not declare vulnerabilities from recon clues.

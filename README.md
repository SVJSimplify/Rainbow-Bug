# 🌈 Rainbow-Bug

Evidence-first, Firefox-first bug bounty workflow for Claude Code. One Opus-led orchestrator, exactly three Haiku specialist agents, and on-demand skills.

## Architecture

| Component | Model | Responsibility |
|---|---|---|
| Main session / orchestrator | Set an available Opus model with `/model` | Scope gate, delegation, adjudication, final report |
| `rainbow-bug-recon` | `haiku` | Authorized asset and attack-surface mapping |
| `rainbow-bug-hunt` | `haiku` | Web, API, auth, access-control, injection and logic testing |
| `rainbow-bug-verify` | `haiku` | Independent reproduction, impact validation, false-positive rejection |

Exactly three subagents. No nested agents. Skills are methodologies, not agents.

**Model IDs:** Agent frontmatter uses Claude Code's `haiku` alias. The alias resolves to the Haiku model available to your account; it does not assert that a dated "Haiku 5.5" ID exists. Select an available Opus model for the main session using `/model`. Confirm exact model availability in Claude Code before use.

## Install

### Windows PowerShell
```powershell
git clone https://github.com/SVJSimplify/Rainbow-Bug.git
cd Rainbow-Bug
.\install.ps1
```

### macOS / Linux
```bash
git clone https://github.com/SVJSimplify/Rainbow-Bug.git
cd Rainbow-Bug
chmod +x install.sh
./install.sh
```

### Manual Claude Code plugin installation
```text
/plugin marketplace add SVJSimplify/Rainbow-Bug
/plugin install rainbow-bug@rainbow-bug
```
If your Claude Code version uses a different marketplace syntax, follow its `/plugin` UI. Restart Claude Code or run `/reload-plugins`.

Prerequisites: Claude Code, Git, Node.js/npm, and Firefox. Installers ask before changing user-level configuration.

## First run
1. Confirm Firefox MCP appears in `/mcp`.
2. Confirm exactly three Rainbow-Bug specialists appear in `/agents`.
3. Set an available Opus model with `/model`.
4. Run `/rainbow-bug` and provide written authorization, exact scope, exclusions, permitted techniques, rate limits and testing window.

## Firefox
Uses Mozilla Firefox MCP over WebDriver BiDi. No Chrome dependency and no silent Chrome fallback. See [mozilla/firefox-mcp](https://github.com/mozilla/firefox-mcp). Use a dedicated isolated Firefox profile, never your everyday logged-in profile. Agents must inspect actual MCP tools and capabilities before use.

## Workflow
1. Orchestrator verifies explicit authorization and exact scope before any target interaction.
2. Recon maps only the authorized attack surface, passive-first.
3. Hunt tests relevant classes using bounded, non-destructive techniques.
4. Verify independently reproduces and attempts to falsify each candidate.
5. Opus adjudicates evidence and produces the final report.

When an asset inventory is already supplied, Recon and Hunt may work in parallel on non-overlapping assignments. Otherwise Recon hands off first. Verify can assess candidate findings as they arrive. Hard cap: three subagents.

## Evidence standard
A finding is `CONFIRMED` only when it is in scope, reproducible, demonstrates the actual security-boundary failure, safely proves concrete attacker-relevant impact, and includes supporting evidence. Status codes, scanner alerts, suspicious code, or unusual responses alone are not proof. Use `POTENTIAL`, `UNVERIFIED`, `NOT REPRODUCED`, or `OUT OF SCOPE` when appropriate. Never access real users' data to prove impact.

## Safety
Require current explicit authorization and program rules. Use researcher-controlled accounts and synthetic records. No denial-of-service, destructive actions, persistence, malware, credential theft, phishing, social engineering, bulk extraction, or scope expansion. Stop after minimal proof. Do not submit reports, contact program owners, or remediate unless asked.

See [SECURITY.md](SECURITY.md). MIT License.

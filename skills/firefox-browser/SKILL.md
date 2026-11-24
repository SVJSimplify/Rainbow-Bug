---
name: firefox-browser
description: Configure and use Mozilla Firefox MCP as Rainbow-Bug's primary browser for authorized browsing, DOM inspection, network observation, and debugging.
---
# Firefox browser workflow

Rainbow-Bug configures Mozilla Firefox MCP in `.mcp.json`. It does not use Chrome and must not silently fall back to Chrome.

1. Check `/mcp` and confirm `firefox` is connected.
2. Inspect the actual tools exposed by the server. Never assume tool names or capabilities.
3. Use only explicitly authorized in-scope hosts.
4. Prefer a dedicated automation profile. If authentication is needed, have the user sign in manually to a researcher-owned test account. Never ask the user to paste passwords, cookies, or tokens into chat.
5. Record URL, timestamp, action, sanitized result, and screenshot/network evidence where appropriate.
6. Do not bypass CAPTCHA, MFA, access controls, or rate limits. Pause for human interaction when authentication or a challenge requires it.

If Firefox MCP is disconnected, report the exact status and troubleshooting steps. Do not silently launch Chrome or claim browser testing occurred. Consult https://github.com/mozilla/firefox-mcp for current installation and tool details.

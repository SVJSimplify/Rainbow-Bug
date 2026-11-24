#!/usr/bin/env bash
set -euo pipefail
command -v claude >/dev/null || { echo "Install Claude Code first: https://code.claude.com/docs"; exit 1; }
command -v node >/dev/null || { echo "Install Node.js 20.19+ first: https://nodejs.org"; exit 1; }
node -e 'const [a,b]=process.versions.node.split(".").map(Number); if(a<20||(a===20&&b<19)){console.error("Node.js 20.19+ required");process.exit(1)}'
echo "Rainbow-Bug installs Firefox MCP with browser access. Use a dedicated Firefox profile and authorized targets only."
read -r -p "Continue? [y/N] " answer
[[ "$answer" =~ ^([yY]|[yY][eE][sS])$ ]] || exit 0
claude plugin marketplace add https://github.com/SVJSimplify/Rainbow-Bug || echo "Marketplace may already be added; continuing."
claude plugin install rainbow-bug@rainbow-bug --scope user
echo "Installed. Restart Claude Code, check /mcp and /agents, select /model opus, then run /rainbow-bug."

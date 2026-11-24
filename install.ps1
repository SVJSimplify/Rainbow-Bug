$ErrorActionPreference = 'Stop'
Require-Command 'claude'
Require-Command 'node'
$nodeVersion = (& node -p "process.versions.node")
$major = [int]($nodeVersion.Split('.')[0]); $minor = [int]($nodeVersion.Split('.')[1])
if (($major -lt 20) -or (($major -eq 20) -and ($minor -lt 19))) { throw "Node.js 20.19+ required. Found $nodeVersion." }
Write-Host 'Rainbow-Bug installs Claude Code plugin + Firefox MCP. Use a dedicated Firefox profile and authorized targets only.' -ForegroundColor Yellow
$answer = Read-Host 'Continue? (y/N)'
if ($answer -notin @('y','Y','yes','YES')) { exit 0 }
& claude plugin marketplace add 'https://github.com/SVJSimplify/Rainbow-Bug'
if ($LASTEXITCODE -ne 0) { Write-Warning 'Marketplace add failed or already exists; attempting plugin install.' }
& claude plugin install 'rainbow-bug@rainbow-bug' --scope user
if ($LASTEXITCODE -ne 0) { throw 'Claude Code plugin installation failed.' }
Write-Host 'Installed. Restart Claude Code, check /mcp and /agents, select /model opus, then run /rainbow-bug.'
function Require-Command([string]$Name) { if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) { throw "Required command '$Name' not found." } }

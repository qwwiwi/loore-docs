#!/usr/bin/env bash
# Local replacement for the removed GitHub Actions "docs" check:
# generated pages (openapi.json, mcp/tools.mdx) must match the LIVE contract. Needs network.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
echo "==> Generated pages match the live contract"
node scripts/generate.mjs --check
echo "OK: все проверки пройдены"

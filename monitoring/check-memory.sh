#!/usr/bin/env bash
set -euo pipefail

free -h

echo
ps aux --sort=-%mem | head

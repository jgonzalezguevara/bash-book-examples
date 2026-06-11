#!/usr/bin/env bash
set -euo pipefail

journalctl -p err -n 50 --no-pager

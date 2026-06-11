#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="${1:-/etc}"
DEST_DIR="${2:-/tmp/backups}"

mkdir -p "$DEST_DIR"

BACKUP_FILE="$DEST_DIR/backup-$(basename "$SOURCE_DIR")-$(date +%F-%H%M%S).tar.gz"

tar czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup created: $BACKUP_FILE"

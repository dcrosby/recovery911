#!/bin/bash
set -e

REPO_ROOT="$HOME/src/recoverybox"
CONTENT_DIR="$REPO_ROOT/content"
BACKUP_DIR="$REPO_ROOT/content_backup_$(date +%Y%m%d_%H%M%S)"

echo "🔄 Backing up existing content..."
if [ -d "$CONTENT_DIR" ]; then
  mv "$CONTENT_DIR" "$BACKUP_DIR"
  echo "✅ Backup saved to $BACKUP_DIR"
fi

echo "📁 Creating new content structure..."
mkdir -p "$CONTENT_DIR"/{recovery,sandbox,tools,virtualization,docs}

# Function to write _index.md for sections
write_index() {
  local dir="$1"
  local title="$2"
  local link="$3"
  local weight="$4"
  cat <<EOF > "$CONTENT_DIR/$dir/_index.md"
---
title: "$title"
linkTitle: "$link"
weight: $weight
menu:
  main:
    weight: $weight
---
Welcome to the $title section.
EOF
}

# Function to write child pages
write_page() {
  local path="$1"
  local title="$2"
  local weight="$3"
  local desc="$4"
  cat <<EOF > "$CONTENT_DIR/$path"
---
title: "$title"
linkTitle: "$title"
weight: $weight
description: "$desc"
---
## $title

$desc
EOF
}

# Write section indexes
write_index "recovery" "Recovery Workflows" "Recovery" 10
write_index "sandbox" "Sandbox Workflows" "Sandbox" 20
write_index "tools" "User-Friendly Tools" "Tools" 30
write_index "virtualization" "Virtualization" "Virtualization" 40
write_index "docs" "Printable Guides" "Docs" 50

# Write sample pages
write_page "recovery/boot-repair.md" "Boot Repair" 1 "Guide for rebuilding EFI and fixing BCD entries."
write_page "recovery/disk-cloning.md" "Disk Cloning" 2 "Automated cloning using DiskPart and robocopy."
write_page "recovery/nvme-upgrade.md" "NVMe Upgrade" 3 "Migrating to NVMe with compatibility checks."

write_page "sandbox/isolation.md" "Malware Isolation" 1 "Windows Sandbox setup for safe analysis."
write_page "sandbox/transfer.md" "Safe Transfer" 2 "Controlled host transfer strategy."

write_page "tools/hash-checker.md" "Hash Checker GUI" 1 "Drag-and-drop EXE for verifying file integrity."
write_page "tools/launcher-scripts.md" "Launcher Scripts" 2 "StartDocs.cmd and automation helpers."

write_page "virtualization/win7-recovery.md" "Win7 Recovery VM" 1 "Legacy VM setup for old drives."
write_page "virtualization/host-integration.md" "Host Integration" 2 "File sharing and internet access."

write_page "docs/printable-checklist.md" "Printable Checklist" 1 "Offline-friendly recovery checklist."
write_page "docs/visual-workflows.md" "Visual Workflows" 2 "Connector diagrams and disk maps."

echo "✅ Recovery content setup complete."
echo "🚀 Run 'hugo server' to preview your site."
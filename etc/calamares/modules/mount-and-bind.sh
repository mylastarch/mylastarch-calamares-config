#!/bin/sh
set -e

# Wait a short moment for Calamares' mount actions to finish
sleep 1

# Determine target mountpoint used by Calamares
TARGET="${CALAMARES_TARGET_DIR:-$(cat /tmp/calamares-target 2>/dev/null || echo /target)}"

[ -d "$TARGET" ] || exit 1

# Ensure standard mounts exist (Calamares mount module should have mounted devices)
# Bind-mount kernel pseudo-filesystems into the target for chrooted steps
mount --rbind /proc "$TARGET/proc" || true
mount --make-rslave "$TARGET/proc" || true
mount --rbind /sys  "$TARGET/sys"  || true
mount --make-rslave "$TARGET/sys" || true
mount --rbind /dev  "$TARGET/dev"  || true
mount --make-rslave "$TARGET/dev" || true

exit 0

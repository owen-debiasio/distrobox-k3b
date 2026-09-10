#!/usr/bin/env bash
set -e

echo "Building local container image 'arch-k3b'..."
podman build -t arch-k3b:latest .

echo "Removing existing 'k3b' distrobox container if it exists..."
distrobox rm -f k3b 2>/dev/null || true

echo "Creating 'k3b' distrobox container with optical drive and D-Bus access..."
distrobox create \
  --name k3b \
  --image arch-k3b:latest \
  --additional-flags "--device /dev/sr0:/dev/sr0 --device /dev/cdrom:/dev/cdrom -v /run/media:/run/media:rslave -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket"

echo "Initialization complete! Run 'distrobox enter k3b' to launch."

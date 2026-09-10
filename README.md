# K3b Distrobox

An Arch-based Distrobox container pre-configured for K3b

## Installation Instructions

Run this `distrobox` command

```bash
$ distrobox create --name k3b --image ghcr.io/owen-debiasio/distrobox-k3b --additional-flags "--device /dev/sr0:/dev/sr0 --device /dev/cdrom:/dev/cdrom -v /run/media:/run/media:rslave -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket"
```

### Creating Application shortcut (OPTIONAL)

```bash
$ distrobox-export --app k3b
```

## Launching K3b

```bash
$ distrobox enter k3b -- k3b
```

Or look for the application icon that was created with `distrobox-export` (see [Creating the Application Shortcut](#creating-application-shortcut-optional))

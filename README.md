# MY LAST ARCH Calamares configuration

Calamares configuration and branding for the MY LAST ARCH installer.

The package installs configuration under `/etc/calamares` and the
`calamares_polkit` launcher under `/usr/local/bin`.

## Layout

- `etc/calamares/settings.conf` — installer module sequence
- `etc/calamares/modules/` — module configuration
- `etc/calamares/branding/default/` — runtime branding and slideshow assets
- `usr/local/bin/calamares_polkit` — privileged Calamares launcher

## 1.0.0 integration

The 1.0.0 ArchISO package list includes:

- `calamares`
- `mylastarch-calamares-config`
- `plasma-login-manager`
- `sddm`

The display-manager module prefers Plasma Login Manager and then tries SDDM.

The following target-system scripts are supplied by the 1.0.0 ArchISO and are
required by the Calamares shellprocess modules:

- `/usr/local/bin/mylastarch-before`
- `/usr/local/bin/mylastarch-final`

Their executable permissions are defined in the 1.0.0 `profiledef.sh`.

## Installation behavior

The target system is unpacked from the ArchISO SquashFS. Package cleanup uses
the installed Pacman database without refreshing repository databases, so an
internet connection is not required.

The default location is `America/New_York`; users may select another location
during installation.

## Validation

After changing this repository:

1. Confirm every file named in `settings.conf` exists.
2. Parse all `.conf` and `branding.desc` files as YAML.
3. Confirm every asset referenced by `branding.desc` and `show.qml` exists.
4. Run `bash -n` on shell scripts.
5. Run `git diff --check`.
6. Build the 1.0.0 ISO and test Calamares in both BIOS and UEFI virtual machines.

Only runtime assets should be placed in the branding directory. Editable
artwork sources, archives, and obsolete variants should be stored elsewhere.

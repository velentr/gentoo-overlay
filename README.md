# gentoo-overlay

Gentoo overlay for various utilities.

# Install

Create `/etc/portage/repos.conf/gentoo-overlay.conf` with the following:

```
[gentoo-overlay]
location = /usr/local/gentoo-overlay
sync-type = git
sync-uri = https://git.sr.ht/~bdk/gentoo-overlay
masters = gentoo
auto-sync = yes
```

Then just sync the repo like normal:
```
# emerge --sync
```

Alternatively, just sync the new repo:

```
# emaint sync --repo gentoo-overlay
```


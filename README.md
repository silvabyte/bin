# bin

Small personal commands for Arch/Omarchy machines.

## Install

```sh
git clone https://github.com/silvabyte/bin ~/code/bin
~/code/bin/install.sh
```

This symlinks everything in `bin/` into `~/.local/bin`, so a `git pull` updates them.

## Commands

| Command | What it does |
|---|---|
| `grok-update` | Updates the Grok Bot app (AUR `grok-bot-bin`) via yay and relaunches it. `--force` reinstalls. |
| `reaper-update` | Installs the newest official REAPER Linux build from reaper.fm to `/opt/REAPER`, checks its sha256, and removes the Arch `reaper` package on first run. `--force` reinstalls. |
| `hypridle-setup` | Rewrites `~/.config/hypr/hypridle.conf` (Omarchy updates reset it): never lock or suspend on AC; on battery, lock after ~2h idle and suspend after 15 min. Restarts hypridle. |
| `on-ac-power` | Exits 0 when plugged in. |
| `lock-if-on-battery` | Locks with `omarchy-system-lock` only on battery. |
| `suspend-if-on-battery` | Suspends only on battery. |

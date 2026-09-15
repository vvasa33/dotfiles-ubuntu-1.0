# My dotfiles!!!

These are my dotfiles for my second ever hyprland setup, running on Ubuntu 26.10 (dev branch).

Run install.sh on your local machine after cloning this repo to install the same thing!

## Ocean calendar (Google)

Click the Waybar clock to open the month overlay. It works from local sample events until you connect Google Calendar.

1. Open [Google Calendar](https://calendar.google.com) in a browser.
2. Settings (gear) → Settings.
3. Left column: pick the calendar you want (often just your address).
4. Scroll to **Integrate calendar**.
5. Copy **Secret address in iCal format**. This URL is a password. Do not commit it.
6. Copy the example config:

```bash
cp ~/.config/ocean-calendar/config.example.json ~/.config/ocean-calendar/config.json
```

If that folder is this git repo (install.sh symlinks it), the real `config.json` is gitignored.

7. Replace `PASTE_SECRET_ICAL_ADDRESS_HERE` with the secret iCal URL. Repeat in the `ics_urls` array for more calendars.
8. Restart the daemon:

```bash
pkill -f ocean-calendar || true
~/.local/bin/ocean-calendar --daemon
```

The status bar reads `Google  last sync …` when the fetch works, or `sync failed` if the URL is wrong. The month grid still works either way.

Optional later: Calendar API OAuth for write access. Not required for dots and the day list.


<img width="1366" height="768" alt="2026-06-16_18-57" src="https://github.com/user-attachments/assets/304cfb49-02f1-46c3-be08-e1d48c314613" />

# .ArchLinux

My Arch dotfiles (Did you notice the dot before "ArchLinux"?)

## Contents

Currently, I only have configs for Hyprland + Rofi + Waybar

## Hyprland

### Requirements
- [Hyprland](https://hypr.land)
- Hyprpaper
- Hyprlock
- Hyprshutdown
- Rofi
- Waybar
- Plasma Desktop Backgrounds (Optional, you can change the wallpaper in ~/.config/hypr/hyprpaper.conf)

### Installation

First things first, install required packages

```shell
sudo pacman -S hyprland hyprpaper hyprlock hyprshutdown rofi waybar plasma-workspace-wallpapers
```

Then install them like this:
```shell
git clone https://github.com/ManiProjs/dotarchlinux.git
cp -r configs/* ~/.config
```

Then, If you're in Hyprland already, restart it (or restart the whole device) and login with your desktop manager (SDDM is preferred)

Then voila! You're Hyprland is ready



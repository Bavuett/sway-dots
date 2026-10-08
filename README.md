# hypr-dots 🌸

A pastel-themed Sway rice for Fedora, inspired by [ViegPhunt/Dotfiles](https://github.com/ViegPhunt/Dotfiles).

## 🎨 Color Palette

| Role       | Color     | Preview |
|------------|-----------|---------|
| Primary    | `#f5b8c6` | 🌸 Pastel Pink |
| Secondary  | `#fffaa0` | 🌼 Pastel Yellow |
| Tertiary   | `#aec6cf` | 🩵 Pastel Blue |
| Background | `#fff7f3` | 🌤️ Soft Spring Cream |
| Foreground | `#6b5b73` | 🌷 Dusty Lavender |

## 📦 Included Configurations

- **Window Manager**: `sway` with pastel borders and gaps
- **Terminal**: `kitty` with pastel color scheme
- **Shell**: `bash` with Starship prompt
- **Prompt**: `starship` (pastel theme)
- **Status Bar**: `waybar` with pastel styling
- **Launcher**: `wofi` (pastel styled)
- **Editor**: `neovim` with `lazy.nvim` + `pastel.nvim` (`pastelglow`)
- **Notifications**: `swaync`
- **Logout Menu**: `wlogout`
- **Lockscreen**: `swaylock`
- **Wallpaper**: `swaybg` (via sway's `output * bg`)
- **Screenshots**: `grim` + `slurp`

> Vanilla sway has no blur, shadows, rounded corners or animations.

## 📂 Structure

```
.
├── .config/
│   ├── colors/         # Shared pastel color scheme (CSS variables)
│   ├── environment.d/  # Session env vars (Wayland/Qt/Electron)
│   ├── sway/           # Sway config
│   │   ├── conf/       # Modular sway configs
│   │   └── scripts/    # Screenshot + cheat sheet helpers
│   ├── swaylock/       # Lockscreen config
│   ├── kitty/          # Kitty terminal config
│   ├── nvim/           # Neovim config (lazy.nvim + plugins)
│   ├── waybar/         # Status bar config and style
│   ├── wofi/           # App launcher config and style
│   ├── swaync/         # Notification center config and style
│   ├── wlogout/        # Logout menu config and style
│   └── starship.toml   # Starship prompt config
├── dependencies.txt    # Fedora package list
├── install_dotfiles.sh # Installer (backs up existing configs)
└── README.md
```

## 🚀 Installation (Fedora)

### 1. Install dependencies

Everything is in the official Fedora repos, no COPR needed:

```bash
sudo dnf install -y $(grep -v '^#' dependencies.txt | grep -v '^$' | tr '\n' ' ')

# Install starship prompt
curl -fsSLo /tmp/install-starship.sh https://starship.rs/install.sh
sh /tmp/install-starship.sh
```

JetBrainsMono Nerd Font: download from https://www.nerdfonts.com/font-downloads

### 2. Clone and deploy

```bash
git clone https://github.com/Bavuett/hypr-dots.git
cd hypr-dots
./install_dotfiles.sh
```

Then log out, pick **Sway** in the login manager and log in.
The wallpaper is installed to `~/.config/sway/wallpaper.jpg`.

## ⌨️ Key Bindings

| Keybind | Action |
|---------|--------|
| `Super + Space` | Open terminal (kitty) |
| `Alt + Space` | Open app launcher (wofi) |
| `Super + B` | Open browser (google-chrome-stable) |
| `Super + E` | Open file manager (nautilus) |
| `Super + Q` | Close window |
| `Super + Shift + Q` | Kill window process |
| `Super + F` | Toggle floating |
| `Super + Shift + F` | Toggle fullscreen |
| `Super + J` | Toggle split direction |
| `Super + R` | Resize mode (arrows / hjkl, Esc to exit) |
| `Super + L` | Lock screen (swaylock) |
| `Super + V` | Clipboard history |
| `Super + H` | Shortcut cheat sheet |
| `Super + Shift + S` | Screenshot region (saved + copied) |
| `Super + Shift + C` | Reload sway config |
| `Super + Shift + W` | Restart waybar + swaync |
| `Super + Shift + Ctrl + Esc` | Exit sway |
| `Super + 1-0` | Switch workspace |
| `Super + Shift + 1-0` | Move window to workspace |
| `Super + Arrows` | Move focus |
| `Super + Scroll` | Cycle workspaces |
| 3-finger swipe | Switch workspace |

## 🎨 Customization

The color palette is centralized in `.config/colors/colors.css`. All components (waybar, swaync, wlogout, wofi) import from this file, so you can change colors in one place.

The Starship prompt colors are configured in `.config/starship.toml`.
The Kitty terminal colors are in `.config/kitty/kitty.conf`.
The Neovim theme is configured in `.config/nvim/lua/plugins/colorscheme.lua` and uses `pastelglow`.

<h1 align="center">venes's dotfiles</h1>

<div align="center">
This repository contains some configurations for Arch Linux and MacOS, Feel free to use any configuration you find usefull. 😃

⚠️ I still have a lot of things to configure so this isn't finished yet.

</div>

---

![Desktop](./images/screenshot.png)

> I'm trying to use [tokyonight-theme](https://github.com/folke/tokyonight.nvim) (night version) colors.

---

## Information

### Thinkpad T480

- **OS**: [Arch Linux](https://archlinux.org/)
- **WM**: [i3](https://i3wm.org/) and [i3blocks](https://github.com/vivien/i3blocks)
- **DM**: [lightdm (gtk-greeter)](https://github.com/canonical/lightdm)
- **Compositor**: [picom](https://github.com/yshui/picom)
- **Application launcher**: [rofi](https://github.com/davatorium/rofi)
- **Font**: [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip)
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty), [zsh](https://www.zsh.org/), [spaceship](https://spaceship-prompt.sh/), and [tmux](https://github.com/tmux/tmux)
- **Editor**: [nvim](https://neovim.io/)
- **File manager**: [ranger](https://github.com/ranger/ranger) and [Thunar](https://docs.xfce.org/xfce/thunar/start)
- **Theme**: [Arc-Dark](https://github.com/horst3180/arc-theme)
- **Icons**: [Papyrus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Cursor**: [ComixCursors](https://limitland.de/comixcursors)

### MacOS

- **WM**: [yabai](https://github.com/koekeishiya/yabai) with [skhd](https://github.com/koekeishiya/skhd)
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty), [zsh](https://www.zsh.org/), [spaceship](https://spaceship-prompt.sh/), and [tmux](https://github.com/tmux/tmux)
- **Editor**: [nvim](https://neovim.io/)

## Installation

I'm using [stow](https://www.gnu.org/software/stow/) for managing my dotfiles, all the packages are in `packages` folder, so you can use:

```sh
stow -v -R -t ~ nvim tmux other-packages
```

> I don't recomend you use \* for all packages, because Yabai and SKHD packages are for macOS only. (I need to automate this 🙃)

Or if you want to use just some packages:

## Todos

- [ ] List all the dependencies
- [ ] Improve this readme
- [ ] Bash script to auto install for Arch or macOS
- [ ] Test with other computers (x220 and x230)
- [x] Test some configs(zsh, kitty, tmux and nvim) with MacOS

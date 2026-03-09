
**My Linux system .config dotfiles**

## Software

# X11
+ AUR helper -> Paru 
+ Login manager -> SDDM
+ Locker -> i3lock-solarized
+ Compositor -> picom
+ Notifications -> dunst
+ Window Manager -> Xmonad

# Wayland
+ AUR helper -> Paru 
+ Login manager -> SDDM
+ Locker -> hyprlock
+ Compositor -> hyprland
+ Notifications -> dunst
+ Window Manager -> hyprland
  
  Hyprland setup:
      - brightnessctl

## Settings

* SDDM (choosen, since works with optimus-manager and have theming option)
Custom SDDM theme: Catppuccin Mocha
 - Where to add theme.
    Theme folder -> /usr/share/sddm/themes/ 
 - How to change theme.
    Open "/usr/lib/sddm/sddm.conf.d/default.conf" -> edit section "[Theme]" -> Current=name_theme

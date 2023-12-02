
** My Linux system .config dotfiles **

## Software

*AUR helper** -> Paru \
*Login manager** -> Ly \
*Locker** -> i3lock-solarized \
*Compositor** -> picom \
*Notifications** -> dunst \
*Window Manager** -> Xmonad \

## Settings

*Graphics -> AMD+Nvidia* \
"optimus-manager" with config update to suport ly \
path -> /usr/lib/python3.10/site-packages/optimus-manager/session.py \
    find function *for cmd in* and add "systemctl restart ly.service" \
 

#!/bin/bash

echo '''
-- Script designed to manage necessary dotfiles.
Configs to be copyied:
 1. Alacritty
 2. Dmenu scripts
 3. Dunst
 4. Flameshot
 5. Xmonad
 6. Doom emacs
 7. .zshrc
 8. Xmobar
'''

########## FOLDERS ##########
# Config folder path
conf_f="$HOME/.config"

doom_path="$HOME/.doom.d"
DMscripts_path="$conf_f/dmenu"
alacritty_path="$conf_f/alacritty"
dunst_path="$conf_f/dunst"
flameshot_path="$conf_f/flameshot"
xmonad_path="$conf_f/xmonad"

folder_existence_array=("$doom_path" "$alacritty_path" "$DMscripts_path" "$dunst_path" "$flameshot_path" "$xmonad_path")

folder_config_array=("$alacritty_path" "$DMscripts_path" "$dunst_path" "$flameshot_path" "$xmonad_path")
folder_others_array=("$doom_path")

########## FILLES ##########

zsh_path="$HOME/.zshrc"
xmobar_path="$HOME/.xmobarrc0"

file_config_array=("$zsh_path" "$xmobar_path")

folder_existence() {
    echo "-- Checking folder config existence in .config folder"
    for item in "${folder_existence_array[@]}";
    do
        if [ -d "$item" ];
        then
            echo "$item exists!"
        else
            echo "Folder $item is not available. Please check!"
            exit 0
        fi
    done
}

file_existence() {
    echo "-- Checking file config existence."
    for item in "${file_config_array[@]}";
    do
        if [ -f "$item" ];
        then
            echo "$item exists!"
        else
            echo "Fiile $item is not exist. Please check!"
            exit 0
        fi
    done
}

folder_config_copy_process() {
    echo "-- Performing .config copying process."
    for item in "${folder_config_array[@]}";
    do
        echo "Copying $item ---> $(pwd)./config"
        cp -r "$item" ./.config
    done
}

folder_other_copy_process() {
    echo "-- Performing copying of other folders."
    for item in "${folder_others_array[@]}";
    do
        echo "Copying $item ---> $(pwd)"
        cp -r "$item" ./
    done
}

file_copy_process() {
    echo "-- Performing config files copy process."
    for item in "${file_config_array[@]}";
    do
        echo "Copying $item ---> $(pwd)"
        cp "$item" ./
    done
}

folder_existence
file_existence

folder_config_copy_process
folder_other_copy_process
file_copy_process

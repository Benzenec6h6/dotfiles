#!/bin/bash

# IM 起動（fcitx5）
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx5 &

# 日本語キーボードなど
setxkbmap -model jp106 -layout jp

# 壁紙設定（feh, swww など）
# feh --bg-scale ~/Pictures/wallpaper.jpg &

# XMonad などを起動
exec xmonad

#!/bin/sh
# ~/.xinitrc

# 日本語入力（fcitx5）の設定（Wayland でなければ）
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# キーマップなど
setxkbmap -model jp106 -layout jp

# 壁紙設定（feh使用）
#feh --bg-scale ~/Pictures/wallpaper.jpg &

# トレイ常駐アプリ（任意）
#nm-applet &
fcitx5 -d &

# コンポジタ（影・透明）
picom &

# ステータスバー付きで XMonad 起動
exec xmonad

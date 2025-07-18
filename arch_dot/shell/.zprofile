if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi

# 環境変数の設定（例：日本語環境）
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

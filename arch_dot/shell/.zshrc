# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 補完機能の強化
autoload -Uz compinit
compinit

# プロンプトのカスタマイズ（簡易版）
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# zsh のオプション設定（利便性向上）
setopt autocd             # ディレクトリ名だけで cd
setopt correct            # コマンド補正
setopt ignoreeof          # Ctrl+D で終了しない
setopt share_history      # 全ターミナルで履歴共有

# パスの設定（必要に応じて）
export PATH="$HOME/.local/bin:$PATH"

# alias 例
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias gs='git status'

# Fcitx5 の設定（X 起動後必要になる）
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

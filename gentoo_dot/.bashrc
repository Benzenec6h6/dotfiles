# ~/.bashrc

export EDITOR=nano
export BROWSER=firefox

alias ll='ls -alF --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias ..='cd ..'
alias ...='cd ../..'

# Enable colorful prompt
PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '

fastfetch

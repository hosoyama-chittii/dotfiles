bindkey -v

# percol settings
function percol_select_history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
    CURSOR=$#BUFFER             # move cursor
    zle -R -c                   # refresh
}
zle -N percol_select_history
bindkey '^R' percol_select_history

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pyenv-virtualenv
eval "$(pyenv virtualenv-init -)"

# alias
alias ls='ls -la'
alias sctl='systemctl'
## docker
alias d='sudo docker'
alias di='sudo docker image'
alias dct='sudo docker container'
alias dc='sudo docker-compose'

## yay
alias yS='yay -S --noconfirm'
alias ySs='yay -Ss'
alias ySy='yay -Syy --noconfirm'
alias ySyu='yay -Syyu --noconfirm'
alias yQi='yay -Qi'
alias yR='yay -Rsnc --noconfirm'

## zplug
#source ~/.zplug/init.zsh

##zplug 'dracula/zsh', as:theme
##zplug 'sindresorhus/pure'

#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

## プラグインを読み込み、コマンドにパスを通す
#zplug load --verbose

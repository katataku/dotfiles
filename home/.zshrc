# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH="/usr/local/sbin:$PATH"
export PYENV_ROOT=/usr/local/var/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/Users/taku/programing/flutter/bin:$PATH"

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

PROMPT='%n %1~ %#'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#alias norminette="~/.norminette/norminette.rb"


function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)
$ "
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
export PYTHON_CONFIGURE_OPTS="--with-tcltk-includes='-I/usr/local/opt/tcl-tk/include' --with-tcltk-libs='-L/usr/local/opt/tcl-tk/lib -ltcl8.6 -ltk8.6'"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

ansi () {
        echo 'Example: \\e[XXm string \\e[0m'
        for ((i = 1; i <= 7; i++)) do
                printf '\e[%dm%d\e[m ' $i $i
        done
        echo
        echo 'Example: \\e[XXm string \\e[0m'
        for ((i = 30; i <= 37; i++)) do
                printf '\e[%dm%d\e[m ' $i $i
        done
        for ((i = 40; i <= 47; i++)) do
                printf '\e[%dm%d\e[m ' $i $i
        done
        echo
        echo 'Example: \\e[38;5;XXm string \\e[0m'
        for ((i = 0; i < 16; i++)) do
                for ((j = 0; j < 16; j++)) do
                        hex=$(($i*16 + $j)) 
                        printf '\e[38;5;%dm%03d\e[m ' $hex $hex
                done
                echo ""
        done
}
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk


export PATH="/opt/homebrew/opt/llvm/bin/:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

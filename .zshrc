export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bureau"
CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git 
    zsh-syntax-highlighting
    zsh-autosuggestions 
    virtualenv
)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# fi

fpath+=("$PWD")

autoload -Uz compinit && compinit
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

. ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh
. ~/.asdf/plugins/java/set-java-home.zsh
. ~/.asdf/installs/rust/stable/env

# project specific
# in project make `just --completions zsh > .just.zsh-completion`
if [[ -f "$PWD/.just.zsh-completion" ]]; then
  . "$PWD/.just.zsh-completion"
fi
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
eval "$(/Users/y.iwamoto/.local/bin/mise activate zsh)"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/y.iwamoto/.docker/completions $fpath)
autoload -Uz compinit
(( ${+_comps[docker]} )) || compinit
# End of Docker CLI completions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(
    zsh-autosuggestions
)
eval "$(starship init zsh)"

peco-cd () {
  cd "$( ghq list --full-path | peco)"
}
alias cdx='peco-cd'

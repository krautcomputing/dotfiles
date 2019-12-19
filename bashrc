export EDITOR="subl -w"

eval "$(rbenv init -)"
eval "$(scmpuff init -s)"

[ -f $HOME/.git-completion.bash ] && source $HOME/.git-completion.bash
[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.git-prompt.sh ] && source $HOME/.git-prompt.sh
[ -f $HOME/.bash_prompt ] && source $HOME/.bash_prompt
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash

# Make git completion work when `git` is aliased to `g`
# http://askubuntu.com/a/62098/63773
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null || complete -o default -o nospace -F _git g

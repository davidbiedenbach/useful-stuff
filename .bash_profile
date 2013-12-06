export CLICOLOR=1

alias sp='source ~/.bash_profile'
alias pe='vim ~/.bash_profile'
alias pub='cat ~/.ssh/id_rsa.pub | pbcopy'

alias gs='git status'
alias gd='git diff'
alias gsu='git submodule update --init --recursive'

#if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
#	source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
#fi

function stdprompt {
PS1="\u@\H [\t]:\#:\w\$ "
}
function parse_git_branch {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"
PS1="$GREEN\u@$RED\h$NO_COLOR:$BLUE\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "


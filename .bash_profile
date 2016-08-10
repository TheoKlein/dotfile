# 讀取資料夾的git branch 
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH})"
	fi
}

export PS1="\n\u@ \[\e[37;44m\]\w\[\e[m\] \[\e[32m\]\`parse_git_branch\`\[\e[m\]\\$\n> "
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/Theo/.vimpkg/bin

# My Script
export PATH=~/bin:$PATH

alias vim='/usr/local/Cellar/vim/7.4.2109/bin/vim'
alias layout='tmuxifier load-window'
alias ll='ls -al'
alias count='find . -type f -exec cat {} + | wc -l'

export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR=vim

# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi

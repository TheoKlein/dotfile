# 
# This is just a backup, not the complete .bash_profile.
# Copy content to .bash_profile instead of replace.
#

# 讀取資料夾的git branch 
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH})"
	fi
}

export PS1="\n\u@ \[\e[37;44m\]\w\[\e[m\] \[\e[32m\]\`parse_git_branch\`\[\e[m\]\\$\n> "

# homebrew安裝的vim取代OS X內建
alias vim='/usr/local/Cellar/vim/7.4.2109/bin/vim'
alias layout='tmuxifier load-window'

# tmuxifier設定
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR=vim

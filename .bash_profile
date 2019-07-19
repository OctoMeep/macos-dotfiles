# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

PATH=${PATH}:/usr/local/mysql/bin

export PATH
#PS1="\[\e[1;32m\]\u\[\e[m\]:\[\e[1;34m\]\w $ \[\e[m\]"
PS1="\[\e[1;32m\][\w]\[\e[m\] $ "
export PS1

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

HISTCONTROL=ignorespace
export HISTCONTROL
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi
export HISTSIZE=500
export HISTFILESIZE=2000

source .bash_secrets

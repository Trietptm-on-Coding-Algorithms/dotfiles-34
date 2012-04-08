#######################################
#             ALIASES                 #
#######################################


# enable color support
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls -F --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi


alias la='ls -A'
alias ll='ls -l'
alias lr='ls -AR'






#######################################
#             PROMPT                  #
#######################################

# my prompt is lookink like this :
# [19:57:38] steeve@zeus dotfiles(master) $
#    Blue       White         Red
#  Hour  user@hostname directory(git branch if exists)

PS1="\[\e[0;34m\][\t] \[\e[1;37m\]\u@\h \[\e[0;31m\]\W\$(__git_ps1 '(%s)') \`if [ \$UID = 0 ]; then echo '#'; else echo '$'; fi\` \[\e[0m\]"

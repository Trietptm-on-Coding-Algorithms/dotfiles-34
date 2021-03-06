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
alias ll='ls -lh'
alias lr='ls -AR'
alias rtfm='man'

# editor
alias vi='vim'
alias v='vim'

# navigation aliases
alias ..='cd ..'
alias ...='cd ../..'


#######################################
#           VARIABLES                 #
#######################################

export SVN_EDITOR=vim
export EDITOR=vim
export LANG=en_US.utf8
#export TERM=rxvt-unicode
# used for Ruby Gem binaries
if [ -d $HOME/.gem/ruby/1.9.1/bin ]; then
  export PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin
fi


#######################################
#             PROMPT                  #
#######################################

# my prompt is lookink like this :
# [19:57:38] steeve@zeus dotfiles(master) $
#    Blue       White         Red
#  Hour  user@hostname directory(git branch if exists)

PS1="\[\e[0;34m\][\t] \[\e[1;37m\]\u@\h \[\e[0;31m\]\W\$(__git_ps1 '(%s)') \`if [ \$UID = 0 ]; then echo '#'; else echo '$'; fi\` \[\e[0m\]"

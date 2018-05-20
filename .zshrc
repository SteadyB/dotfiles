# EXPORT
#
  export ZSH=/home/workstation/.oh-my-zsh
  export ADB=/usr/bin/adb
  export UPDATE_ZSH_DAYS=7

#\
##\
###}
##/
#/

# OMZ PLUGINS
#

plugins=(
  git
  colored-man-pages
) 

#\
##\
###}
##/
#/

# SPWRLVL9K
#
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline context vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs time history command_execution_time status)
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='blue'
#
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_STATUS_SHOW_PIPESTATUS=true
#
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3

#\
##\
###}
##/
#/

# ALIAS FUNCTION
#
cdls() { cd "$@" && colorls -l -a; }

# SHELL
#
alias ls='colorls -l -a'
alias ..="cd .. && ls"

# DOTFILES
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# PHP
#
alias phpT="php -S 127.0.0.1:8000 -t public"
alias phpSF="php bin/console server:run"

# SF3
#
alias doctrine="php bin/console doctrine"

# SHELL APP
#
alias h="htop"

#\
##\
###}
##/
#/

# OMZ SOURCE
#
  source $ZSH/oh-my-zsh.sh
#


# TILIX
#
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

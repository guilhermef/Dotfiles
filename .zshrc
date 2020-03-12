#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status command_execution_time)
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_VCS_GIT_HOOKS=(git-remotebranch)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{232}\uE0BD%f"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{232}\uE0BD%f"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='▓▒░'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='░▒▓'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source "${HOME}/aliases.sh"

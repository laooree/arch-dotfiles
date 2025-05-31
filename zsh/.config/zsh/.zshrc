# If not a login shell, manually source .zprofile
if [[ ! -o login && -f ~/.zprofile ]]; then
  source ~/.zprofile
fi

# Source shell aliases
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"

# load modules
zmodload zsh/complist
autoload -U compinit && compinit -C
autoload -U colors && colors

# configure completions
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
# zstyle ':completion:*' file-list true # more detailed list
zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/
# expansion

# main opts
setopt append_history inc_append_history share_history # better history on exit,
# history appends rather than overwrites; history is appended as soon as cmds
# executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
# setopt autocd # type a dir to cd
setopt auto_param_slash # if dir is completed, add / instead of space
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # match .files too
setopt extended_glob # match ~ # ^
# setopt interactive_comments # allow comments in shell
# unsetopt prompt_sp # don't autoclean blanklines
stty stop undef # disable accidental ctrl s
bindkey -e # emacs keybindings

# history opts
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history" # move histfile to cache
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space
                       # are not saved

# Prompt
NEWLINE=$'\n'
PROMPT="${NEWLINE}%F{#1793D1}   %F{#A7C080} %n in %~${NEWLINE}  ❯ %f%k"

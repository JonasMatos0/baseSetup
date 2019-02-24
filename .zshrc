# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/jonas/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#=======================================
# FONT SUPPORT
#=======================================
POWERLEVEL9K_MODE="nerdfont-complete"
#=======================================
# PROMPT CONFIGURATION
#=======================================
# multiline prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true						# double line prompt
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true						# place the right prompt on second line
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=""
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true						# new line before prompt
POWERLEVEL9K_DISABLE_RPROMPT=true							# disable the right prompt
# segment/sub segment separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'				# 
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'				# 
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'			# 
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'			# 
#=======================================
# HISTORY
#=======================================
export HISTFILE=~/.zsh_history
export HISTSIZE=SAVEHIST=10000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory
# 10ms for key sequences
KEYTIMEOUT=1
# If a command is issued that can’t be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory
setopt AUTO_CD
# If a pattern for filename generation has no matches, print an error
# instead of leaving it unchanged in the argument list
unsetopt nomatch
#=======================================
# ZSH CONFIG
#=======================================
# tab completion from both ends.
#setopt completeinword
# tab completion should be case-insensitive.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# word boundaries dont cross slashes (expunge the '/' character from the list
# of characters that are part of words)
export WORDCHARS=${WORDCHARS//\//}
# From https://github.com/robbyrussell/oh-my-zsh/issues/238
setopt NO_cdable_vars
# Allow comments on command line: http://stackoverflow.com/a/11873793
setopt interactivecomments
#=======================================
# SYSTEM STATUS SEGMENTS
#=======================================
# *****  background_jobs  *****
# If there is more than one background job, this segment will show the number of jobs. Set this to false to turn this feature off.
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
# *****  battery  *****
# This segment will display your current battery status (fails gracefully on systems without a battery). It is
# supported on both OSX and Linux (note that it requires acpi on Linux).
#POWERLEVEL9K_BATTERY_LOW_THRESHOLD=10						# Threshold to consider battery level critical.
#POWERLEVEL9K_BATTERY_VERBOSE=true							# Display time remaining next to battery level.
# *****  context  *****
# The context segment (user@host string) is conditional. By default, it will only print if you are not your "normal"
# user (including if you are root), or if you are SSH"d to a remote host.
# To use this feature, make sure the context segment is enabled in your prompt elements (it is by default), and define
# a DEFAULT_USER in your ~/.zshrc.
export DEFAULT_USER="$User"								# Username to consider a "default context" (you can also
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true						# Always show this segment, including $USER and hostname.
POWERLEVEL9K_ALWAYS_SHOW_USER=true							# Always show the username, but conditionalize the
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@%m"						# Default context prompt (username@machine).
# Refer to the ZSH Documentation for all possible expansions, including deeper host depths.
# You can customize the context segment. For example, you can make it to print the full hostname by setting
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"
#POWERLEVEL9K_CONTEXT_HOST_DEPTH=							# variable to change how the hostname is displayed.
# See (ZSH Manual)[http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Login-information] for details.
# The default is set to %m which will show the hostname up to the first ‘.’ You can set it to %{N}m where N is an
# integer to show that many segments of system hostname. Setting N to a negative integer will show that many segments
# from the end of the hostname.
# *****  dir  *****
# The dir segment shows the current working directory. When using the "Awesome Powerline" fonts, there are additional
# glyphs, as well
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3							# If your shorten strategy, below, is entire directories,
#POWERLEVEL9K_SHORTEN_STRATEGY="Default"					# How the directory strings should be truncated. See the
#POWERLEVEL9K_SHORTEN_DELIMITER=".."
#POWERLEVEL9K_SHORTEN_DELIMITER="\u2026"						# …
#
#     Strategy Name                  Description
#     -------------                  -----------
#     Default                        Truncate whole directories from left. How many is defined by
#                                    POWERLEVEL9K_SHORTEN_DIR_LENGTH
#     truncate_middle                Truncates the middle part of a folder. E.g. you are in a folder named
#                                    "/MySuperProjects/AwesomeFiles/BoringOffice", then it will truncated to
#                                    "/MyS..cts/Awe..les/BoringOffice", if POWERLEVEL9K_SHORTEN_DIR_LENGTH=3 is also
#                                    set (controls the amount of characters to be left).
#     truncate_from_right            Just leaves the beginning of a folder name untouched. E.g. your folders will be
#                                    truncated like so: "/ro../Pr../office". How many characters will be untouched is
#                                    controlled by POWERLEVEL9K_SHORTEN_DIR_LENGTH.
#     truncate_with_package_name     Search for a package.json or composer.json and prints the name field to
#                                    abbreviate the directory path. The precedence and/or files could be set by
#                                    POWERLEVEL9K_DIR_PACKAGE_FILES=(package.json composer.json). Please note that
#                                    this currently looks for .git directory to determine the root of the project.
#     truncate_with_folder_marker    Search for a file that is specified by POWERLEVEL9K_SHORTEN_FOLDER_MARKER and
#                                    truncate everything before that (if found, otherwise stop on $HOME and ROOT).
#
# Double quotes are important here!
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{red} $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") %F{black}"
#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true					# omit the first character (usually a slash
#POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="~"
# *****  dir_writable - no additional settings  *****
# Displays a lock icon, if you do not have write permissions on the current folder.
# *****  disk_usage  *****
# The disk_usage segment will show the usage level of the partition that your current working directory resides in.
#POWERLEVEL9K_DISK_USAGE_ONLY_WARNING=false					# Hide the segment except when usage levels have hit
#POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL=90					# The usage level that triggers a warning state.
#POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL=95					# The usage level that triggers a critical state.
# *****  history - no additional settings  *****
# The command number for the current line.
# *****  host - no additional settings  *****
# This segment displays the current host.
# *****  ip  *****
# This segment tries to examine all currently used network interfaces and prints the first address it finds.
#POWERLEVEL9K_IP_INTERFACE="None"							# The NIC for which you wish to display the IP address.
# *****  load - no additional settings  *****
# Your machine"s load averages.
# *****  os_icon  *****
# Display a nice little icon, depending on your operating system.
# *****  public_ip  *****
#This segment will display your public IP address. There are several methods of obtaining this information and by
# default it will try all of them starting with the most efficient. You can also specify which method you would like
# it to use. The methods available are dig using opendns, curl, or wget. The host used for wget and curl is
# http://ident.me by default but can be set to another host if you prefer.
#POWERLEVEL9K_PUBLIC_IP_FILE="/tmp/p8k_public_ip"			# This is the file your public IP is cached in.
#POWERLEVEL9K_PUBLIC_IP_HOST="http://ident.me"				# This is the default host to get your public IP.
#POWERLEVEL9K_PUBLIC_IP_TIMEOUT=300							# The amount of time in seconds between refreshing your
#POWERLEVEL9K_PUBLIC_IP_METHODS=(dig curl wget)				# These methods in that order are used to refresh your IP.
#POWERLEVEL9K_PUBLIC_IP_NONE="None"							# The string displayed when an IP was not obtained
# *****  ram  *****
# Show free RAM.
POWERLEVEL9K_RAM_ELEMENTS="Both"							# Specify ram_free or swap_used to only show one or the
# *****  root_indicator  *****
# An indicator if the user has superuser status.
# *****  ssh - no additional settings  *****
# Indicates whether or not you are in an SSH session.
# *****  status  *****
# This segment shows the return code of the last command.
POWERLEVEL9K_STATUS_VERBOSE=false
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"
#=======================================
# CUSTOM FUNCTIONS
#=======================================
#c, v, cs and vs require XCLIP
#>> apt install xclip
c(){
  cat | xclip -selection clipboard
};
v(){
  xclip -selection clipboard -o
};
cs(){
  cat | xclip -selection
};
vs(){
  xclip -o
};
#xq require xmlUtils and pygments. xml2 is a plus
#>>apt install libxml2-utils
#>>apt install python-pygments
#i optional >> apt install xml2 
xq(){
  xmllint --format - | pygmentize -l xml
}
#speedTest requires speedtest-cli. jq is a plus
#>> sudo apt install speedtest-cli
# optional >> sudo apt install jq 
speedTest(){
  #speedtest-cli --simple
  speedtest-cli --json | jq .
}
ping1(){
  ping 1.1.1.1 | grep -o -P 'time.*'
}
#run applications in background
chrome(){
  nohup google-chrome &
}
slack(){
  nohup slack &
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

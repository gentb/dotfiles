export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"
fpath=(~/.zfunctions $fpath)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Prompt
autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version
  # gradle        # Gradle section
  # maven         # Maven section
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  # gcloud        # Google Cloud Platform section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubectl       # Kubectl context section
  # terraform     # Terraform workspace section
  # ibmcloud      # IBM Cloud section
  exec_time     # Execution time
  # line_sep      # Line break
  battery       # Battery level and status
  # vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
history
jsontools
sudo
vscode
git
extract
colored-man-pages
colorize
pip
python
brew
macos
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


################################# User configuration ##################################



# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
# =====================
  # LS
  alias l='exa -lah'
  alias ls='exa'

  # Git
  alias gcl="git clone"
  alias gst="git status"
  alias gl="git pull"
  alias gp="git push"
  alias gd="git diff | mate"
  alias gc="git commit -v"
  alias gca="git commit -v -a"
  alias gb="git branch"
  alias gba="git branch -a"
  alias gcam="git commit -am"
  alias gbb="git branch -b"

  # ytfzf (command line youtube client)
  alias youtube="ytfzf"

# zsh
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"


export BASH_SILENCE_DEPRECATION_WARNING=1

# suppresses the following zsh deprecation warning:
# The default interactive shell is now zsh.
# To update your account to use zsh, please run `chsh -s /bin/zsh`.
# For more details, please visit https://support.apple.com/kb/HT208050.


#  Sections:
#  1.   Environment Configuration
#  2.   Change Defaults
#  3.   File and Folder Management
#  4.   Navigation
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Library Paths

#   These variables tell your shell where they can find certain
#   required libraries so other programs can reliably call the variable name
#   instead of a hardcoded path.

    # NODE_PATH
    export NODE_MODULES="/Users/$USER/.nvm/versions/node/v18.17.0/lib/node_modules"

#   Configurations

    # This variable configures git to not require a message when you merge.
    export GIT_MERGE_AUTOEDIT='no'

#   Editors
    # Tells your shell that when a program requires various editors, use vscode.
    # The -w flag tells your shell to wait until vscode exits
    export VISUAL="code -w"
    export SVN_EDITOR="code -w"
    export GIT_EDITOR="code -w"
    export EDITOR="code -w"
    export REACT_EDITOR="code -w"

#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------

zipf () { zip -r "$1".zip "$1" ; }            # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'        # numFiles:     Count of non-hidden files in current dir
# alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
# alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
# alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

#   -------------------------------
#   4.  NAVIGATION
#   -------------------------------


#   CD into the desktop from anywhere

    function desktop {
      cd /Users/$USER/Desktop/$@
    }

#   CD into code from anywhere

    function codedir {
      cd /Users/$USER/development/code/$@
    }

# #   CD into data from anywhere

    function data {
      cd /Users/$USER/data/$@
    }

# #   CD into projects from anywhere

    function projects {
      cd /Users/$USER/development/code/projects/$@
    }

#   pathname of highest finder window
  function fpath {
    osascript -e 'tell application "Finder"'\
        -e "if (${1-1} <= (count Finder windows)) then"\
        -e "get POSIX path of (target of window ${1-1} as alias)"\
        -e 'else' \
        -e 'get POSIX path of (desktop as alias)'\
        -e 'end if' \
        -e 'end tell';
  }



#   5.  PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
    my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }


#   easily grep for a matching process

    function psg {
      FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
      REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
      ps aux | grep "[$FIRST]$REST"
    }

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------
    alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
    alias flushDNS='sudo killall -HUP mDNSResponder'            # flushDNS:     Flush out the DNS Cache
    alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
    alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
    alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
    alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
    alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
    alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections

#   ii:  display useful host related information
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditional information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"


#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
    alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#   Finder settings
#   -----------------------------------------------------------------------------------
    alias ShowFiles='defaults write com.apple.finder AppleShowAllFiles TRUE
    killall Finder'

    alias HideFiles='defaults write com.apple.finder AppleShowAllFiles FALSE
    killall Finder'

#   ---------------------------------------
#   8.  WEB DEVELOPMENT
#   ---------------------------------------

#   open localhost to designated port
    function lh () { open http://localhost:$1; }
#   start simple python server (2.xx)
    alias pysimpleserver='python -m SimpleHTTPServer'
#   start simple python server (3.xx)
    alias pyserver='python -m http.Server'

#   extra
    alias apacheEdit='sudo subl /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
    alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
    alias editHosts='sudo subl /etc/hosts'                  # editHosts:        Edit /etc/hosts file
    alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
    alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:       Shows apache error logs
    httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
    httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }


  #use markdown to html generator
  # alias md2html='rm -r ../generated_html & marked-it-cli . --output=../generated_html/ --header-file=$NODE_MODULES/marked-it-cli/header.txt --footer-file=$NODE_MODULES/marked-it-cli/footer.txt --conref-file=$NODE_MODULES/marked-it-cli/cloudoeconrefs.yml --extension-file=$NODE_MODULES/marked-it-cli/example/accessibilityExt.js --extension-file=$NODE_MODULES/marked-it-cli/example/xmlTocExt.js --toc-xml --overwrite --verbose & subl ../generated_html'


# Final Configurations and Plugins
# =====================

# CLI Tools
  # hub
    # a command line tool that wraps git in order to extend it with extra
    # features and commands that make working with GitHub easier.
  eval "$(hub alias -s)"

  # cheat
    # syntax highlighting
    export CHEATCOLORS=true

# Text Editor
  # Add Visual Studio Code (code)
  export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"


# Databases
  # Postgres
    alias pg_start="pg_ctl -D /usr/local/var/postgres start"
    alias pg_stop="pg_ctl -D /usr/local/var/postgres stop"
    alias pg_status="pg_ctl status -D /usr/local/var/postgres/"

  # mySQL
    export PATH=$PATH:/usr/local/mysql/bin

# Node
  export NVM_DIR="$HOME/.nvm"
  # This loads nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  # # This loads nvm bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

  # Yarn Package Manager
  export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

  # export NODE_OPTIONS=--openssl-legacy-provider


# Golang
  # export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
  # export GOROOT=/usr/local/opt/go/libexec
  # export PATH=$PATH:$GOPATH/bin
  # export PATH=$PATH:$GOROOT/bin


# Python
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  # __conda_setup="$('/Users/gbardhoshi/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
  # if [ $? -eq 0 ]; then
  #     eval "$__conda_setup"
  # else
  #     if [ -f "/Users/gbardhoshi/anaconda3/etc/profile.d/conda.sh" ]; then
  #         . "/Users/gbardhoshi/anaconda3/etc/profile.d/conda.sh"
  #     else
  #         export PATH="/Users/gbardhoshi/anaconda3/bin:$PATH"
  #     fi
  # fi
  # unset __conda_setup
  # # <<< conda initialize <<<
  # conda activate base

  # python package for correcting malformed commands in terminal
  # eval $(thefuck --alias)

# Ruby
  # [[ -s "$HOME/.rvm/scripts/rvm" s]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

# C and C++
  # export PATH=/usr/local/gcc-10.1.0/bin



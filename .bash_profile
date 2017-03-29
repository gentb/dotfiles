# Prompt

  # This function is called in your prompt to output your active git branch.
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  # This function builds your prompt. It is called below
  function prompt {
    # Define some local colors
    local   RED="\[\033[0;31m\]" # This syntax is some weird bash color thing I never
    local   LIGHT_RED="\[\033[1;31m\]" # really understood
    local   BLUE="\[\e[0;49;34m\]"

    # Here is where we actually export the PS1 Variable which stores the text for your prompt
    export PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$BLUE// \[\e[0m\]"
      PS2='> '
      PS4='+ '
    }

  # Finally call the function and our prompt is ready
  prompt


# Environment Variables
# =====================

  # Library Paths
  # These variables tell your shell where they can find certain
  # required libraries so other programs can reliably call the variable name
  # instead of a hardcoded path.

    # NODE_PATH
    export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

    # Those NODE & Python Paths won't break anything even if you
    # don't have NODE or Python installed. Eventually you will and
    # then you don't have to update your bash_profile

  # Configurations
    # GIT_MERGE_AUTO_EDIT
    # This variable configures git to not require a message when you merge.
    export GIT_MERGE_AUTOEDIT='no'

    # Editors
    # Tells your shell that when a program requires various editors, use sublime.
    # The -w flag tells your shell to wait until sublime exits
    export VISUAL="subl -w"
    export SVN_EDITOR="subl -w"
    export GIT_EDITOR="subl -w"
    export EDITOR="subl -w"


  # Paths

    # The USR_PATHS variable will just store all relevant /usr paths for easier usage
    # Each path is seperate via a : and we always use absolute paths.

    # Homebrew adopts this convetion so things installed via Homebrew
    # get symlinked into /usr/local
    export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"

    # We build our final PATH by combining the variables defined above
    # along with any previous values in the PATH variable.

    # Our PATH variable is special and very important. Whenever we type a command into our shell,
    # it will try to find that command within a directory that is defined in our PATH.
    # Read http://blog.seldomatt.com/blog/2012/10/08/bash-and-the-one-true-path/ for more on that.
    export PATH="$USR_PATHS:$PATH"


# Helpful Functions
# =====================

# CD into the desktop from anywhere

function desktop {
  cd /Users/$USER/Desktop/$@
}

function labs {
  cd /Users/$USER/development/code/flatiron/labs/$@
}

function code {
  cd /Users/$USER/development/code/$@
}

function data {
  cd /Users/$USER/data/$@
}

function projects {
  cd /Users/$USER/development/code/projects/$@
}

function fpath {
  osascript -e 'tell application "Finder"'\
      -e "if (${1-1} <= (count Finder windows)) then"\
      -e "get POSIX path of (target of window ${1-1} as alias)"\
      -e 'else' \
      -e 'get POSIX path of (desktop as alias)'\
      -e 'end if' \
      -e 'end tell';
}


# function Extract for common file formats

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
    return 1
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

# easily grep for a matching process

function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}



# Aliases
# =====================
  # LS
  alias l='ls -lah'

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

  alias pysimpleserver='python -m SimpleHTTPServer & lh 8000'

  alias fnum="ls -F |grep -v / | wc -l"

  function pyserver () { python manage.py runserver $1; }

  function lh () { open http://localhost:$1; }

  # ActiveRecord Migrations
  alias db:migrate:both='rake db:migrate && rake db:migrate RAILS_ENV=test'
  alias db:rollback:both='rake db:rollback && rake db:rollback RAILS_ENV=test'

  # Finder settings
  alias ShowFiles='defaults write com.apple.finder AppleShowAllFiles TRUE
  killall Finder'

  alias HideFiles='defaults write com.apple.finder AppleShowAllFiles FALSE
  killall Finder'

# Case-Insensitive Auto Completion
  bind "set completion-ignore-case on"

#Tab completion
  if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
  elif [ -f /etc/bash_completionon ]; then
    source /etc/bash_completion;
  fi;

# hub is a command line tool that wraps git in order to extend it with extra
  # features and commands that make working with GitHub easier.
  eval "$(hub alias -s)"

  GITHUB_ENTERPRISE_DOMAIN=git@github.ibm.com

  # Allows you to use hub(1) with your GitHub Enterprise
  # account without setting it globally in your ~/.gitconfig.
  # Example: `ghe clone username/repo`
  function ghe() {
    GITHUB_HOST=$GITHUB_ENTERPRISE_DOMAIN git $*
  }

  # Setup an existing repo to use GitHub Enterprie exclusively
  function ghe-setup() {
    git config --add hub.host $GITHUB_ENTERPRISE_DOMAIN
  }


# cheat syntax highlighting
  export CHEATCOLORS=true


# Postgres
  export PATH=/Applications/Postgres.app/Contents/Versions/9.6s/bin:$PATH


# Final Configurations and Plugins
# =====================


  # added by Anaconda3 4.3.0 installer
  export PATH="/Users/$USER/anaconda/bin:$PATH"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

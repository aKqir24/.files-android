# ~/.bashrc

# ================================================== #
#						Settings			   		 #
# ================================================== #
[[ $- != *i* ]] && return

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

# ================================================== #
#						Features					 #
# ================================================== #
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
else
	color_prompt=
fi

# ================================================= #
#				Environment Variables				#
# ================================================= #
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export CARGO_TARGET_DIR=$HOME/.cargo/build_files
export LD_LIBRARY_PATH=$PWD/bin:$LD_LIBRARY_PATH
export FZF_DEFAULT_OPTS="--height 40% --reverse"
export FZF_DEFAULT_COMMAND="find . -type f"
export TERMINFO=$PREFIX/share/terminfo
export ZED_ALLOW_EMULATED_GPU=1
export OPENSSL_DIR=$PREFIX
export GPG_TTY=$(tty)
export WINEDEBUG=-all

# ================================================= #
#					  Aliases						#
# ================================================= #
alias ll='ls -l' 
alias la='ls -A'
alias l='ls -CF'
alias pkg='nala'
alias apt='nala'
alias iw='/sbin/iw'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto' 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto' 
alias egrep='egrep --color=auto'
alias clear="printf '\033[2J\033[H'"

# ================================================= #
#					  Inegration
# ================================================= #
eval "$(starship init bash)"
eval "$(fzf --bash)"

if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then 
	source /usr/share/doc/fzf/examples/key-bindings.bash
fi

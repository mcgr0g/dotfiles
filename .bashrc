export HISTTIMEFORMAT='%F %T ' # Ведение лога истории с datestamp'ом
PROMPT_COMMAND='history -a;history -n' # Занесение команды в .bash_history сразу же, после нажатия enter (а не после завершения сеанса)
export HISTSIZE=10500 # Увеличение размера хистори
export HISTCONTROL=ignoredups # не заносить в хистори повторяющиеся друг за другом команды
export HISTIGNORE="&:ls:g:exit:< >*:ssh:history" # Отключаем занесение «бесполезных» с точки зрения истории команд:
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

SSH_ENV=$HOME/.ssh/environment
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}
   
if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ports='netstat -tulanp'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset
 
alias sudo="sudo -E"
PS1="\[$bldgrn\]\u\[$bldpur\]@\h\[$txtcyn\]:\w\[$bldwht\]\$\[$txtrst\] "

alias extmonitor='xrandr --output VGA1 --auto --primary && xrandr --rate 72 && xrandr --output LVDS1 --off'
alias intmonitor='xrandr --output LVDS1 --auto --primary && xrandr --output VGA1 --off'


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
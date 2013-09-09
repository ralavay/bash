# Aliases
# Copy this file to ~/.bash_aliases

alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade -y'
alias up='sudo apt-get update && sudo apt-get upgrade -y'
alias dist-upgrade='sudo apt-get dist-upgrade -y'
alias inst='sudo apt-get install'
alias ins='sudo apt-get install --no-install-recommends'
alias remove='sudo apt-get remove --purge'
alias autoremove='sudo apt-get autoremove --purge'
alias search='apt-cache search'
alias show='apt-cache show'
alias ..='cd ..'
alias ...='cd ../..'
alias p='ping -c 5 -n -i 0.2 -W1'
alias pp='p -c 5 -n -i 0.2 -W1 google.com'
alias f='free -m'
alias h='htop'
alias l='ls -lsh'
alias py='ipython'
alias hdd='sudo hddtemp /dev/sda'
alias map='~/Workspace/bash-scripts/nmap.sh'
alias wget-all-website='wget --mirror -p --convert-links'
alias xrand='xrandr --output LVDS1 --brightness'
alias catn='cat -n'
alias grep#='grep -v "^#"' # only view the uncomment line
alias grep##='egrep -v "^#|^$"' # only view the uncomment line + suppress blank lines
alias ?='whatis $(ls /bin | shuf -n 1)'
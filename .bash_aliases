# Make all relevant parent directories
alias md='mkdir -p'

# Use vim instead of vi
alias vi='vim' 

# Apt-get aliases
alias update='sudo apt-get update'
alias install='sudo apt-get install'

# Power aliases
alias poweroff='sudo shutdown now -h'
alias restart='sudo shutdown now -r' 

#Network aliases
alias wifi='sudo systemctl restart netctl-auto@wlp2s0.service &&
            sudo systemctl stop netctl-ifplugd@enp3s0.service'
alias ethernet='sudo systemctl restart netctl-ifplugd@enp3s0.service &&
                sudo systemctl stop netctl-auto@wlp2s0.service'

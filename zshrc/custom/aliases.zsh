alias ll='ls -l'
alias la='ls -al'
alias psef='ps -ax |grep $1'
alias cat='bat'
alias cl='clear'

# kubectl
alias k='kubectl'
alias kgx='kubectl config get contexts'
alias ka='kubectl apply -f'
alias kd='kubectl describe'
alias kg='kubectl get'
alias kdel='kubectl delete'
alias kgpod='kubectl get pods'

# docker 
alias d='docker'
alias dps='docker ps'
alias dco='docker-compose'

# suffix aliases
#alias -s tf=code
#alias -s md=code
#alias -s json=code
#alias -s {cs, ts, html}=code

mkcdir ()
{
   mkdir -p -- "$1" &&
      cd -P -- "$1"
}


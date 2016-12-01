alias d='docker $*'
alias d-c='docker-compose $*'

alias compose="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml"
alias compose-prod="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.proddump.yml"
alias compose-testdata="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.testdata.yml"
alias c2fo_migrate="(cd $C2FO_HOME && (NODE_ENV=dockertest grunt migrate) && grunt migrate)"
alias compose-reset="compose down && docker-clean run && compose up -d && sleep 5 && c2fo_migrate"
alias compose-prod-reset="compose-prod down && docker-clean run && compose-prod up -d && sleep 5 && c2fo_migrate"
alias compose-testdata-reset="compose-testdata down && docker-clean run && compose-testdata up -d && sleep 5 && c2fo_migrate"
 
alias docker-stop-all="docker stop $(docker ps -a -q)"

alias szshrc="source ~/.zshrc"

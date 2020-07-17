alias compose="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml"
alias compose-prod="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.proddump.yml"
alias compose-testdata="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.testdata.yml"

alias c2fo_migrate="(cd $C2FO_HOME && nvm use && (NODE_ENV=test grunt migrate) && grunt migrate)"
alias user_auth_migrate="(cd $USER_AUTH_HOME && nvm use && make build)"
alias compose-reset="compose down && docker-clean run && compose up -d"
alias compose-prod-reset="compose-prod down && docker-clean run && compose-prod up -d"
alias compose-testdata-reset="compose-testdata down && docker-clean run && compose-testdata up -d"

alias docker-stop-all="docker stop $(docker ps -a -q)"

alias compose-akka="docker-compose -p akka-calc -f $C2FO_HOME/docker-compose.akka-nodes.yml"

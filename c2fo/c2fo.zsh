# User configuration
export NODE_ENV=development
export C2FO_HOME=/Users/aaron.nordyke/Documents/c2fo
export JAVA_HOME=`/usr/libexec/java_home`
export GOPATH=/Users/aaron.nordyke/go
export PATH=$PATH:$GOPATH/bin
export DOCKER_SCRIPTS=/Users/aaron.nordyke/docker/scripts
export PATH=$PATH:$DOCKER_SCRIPTS
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M -Duser.timezone=GMT"

# Docker-compose
alias compose="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml"
alias compose-prod="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.             proddump.yml"
alias compose-testdata="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.         testdata.yml"
alias c2fo_migrate="(cd $C2FO_HOME && (NODE_ENV=dockertest grunt migrate) && grunt migrate)"
alias compose-reset="compose down && docker-clean run && compose up -d && sleep 5 && c2fo_migrate"
alias compose-prod-reset="compose-prod down && docker-clean run && compose-prod up -d && sleep 5 && c2fo_migrate"
alias compose-testdata-reset="compose-testdata down && docker-clean run && compose-testdata up -d && sleep 5 &&               c2fo_migrate"

alias docker-stop-all="docker stop $(docker ps -a -q)"

# Aliases
alias szshrc="source ~/.zshrc"

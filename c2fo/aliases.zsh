alias pull-go="~/c2fo/pull-go.sh"
alias calculator_migrate="cd ~/Documents/akka-calc && sbt 'db clean' db && cd --"
alias user_auth_migrate="cd $USER_AUTH_HOME && npm run migrate:up && cd --"

alias db_migrate="c2fo_migrate && calculator_migrate && user_auth_migrate"

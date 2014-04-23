alias ll="ls -l"
alias la="ls -al"
alias sql="mysql -u morebucks -pmorebucks morebucks"
alias elog="tail -F /var/log/apache2/error_log"
alias hb="/usr/local/hbase/bin/hbase shell"
alias cass="/usr/local/cassandra/bin/cassandra-cli --host localhost --port 9160"
alias shardinfo='curl -X POST 10.0.0.249/backtalk/status/shardInfo'
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export HBASE_HOME="/usr/local/hbase"
export ANT_HOME="/usr/local/ant"
export PIG_HOME="/usr/local/pig"
export CASSANDRA_HOME="/usr/local/cassandra"
export CATALINA_HOME="/usr/local/tomcat"
export HBASE_HOME="/usr/local/hbase"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"
export JAVA_VERSION="1.6"
export DEPLOY_KEYFILE=~/.ssh/id_rsa

export BRONTOLABS_DUDE='brontolabs13.com'
export BRONTOLABS_USER='dantherrien'
export PATH=$JAVA_HOME/bin:$PIG_HOME/bin:$ANT_HOME/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

export CLASSPATH=$PIG_HOME/pig-0.8.1-core.jar
##
# Your previous /Users/dantherrien/.bash_profile file was backed up as /Users/dantherrien/.bash_profile.macports-saved_2012-04-09_at_17:21:17
##

# MacPorts Installer addition on 2012-04-09_at_17:21:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.



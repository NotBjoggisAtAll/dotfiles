if status is-interactive
  # Commands to run in interactive sessions can go here

  starship init fish | source

  direnv hook fish | source
end

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH $HOME/bin
set -x PATH $PATH $HOME/.local/share/JetBrains/Toolbox/scripts
set -x JAVA_HOME /usr/bin/java

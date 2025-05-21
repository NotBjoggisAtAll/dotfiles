if status is-interactive
    # Commands to run in interactive sessions can go here

  starship init fish | source


  direnv hook fish | source'
end

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

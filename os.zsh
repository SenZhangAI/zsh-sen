# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

case $OSTYPE {
  cygwin*)
    alias ep='explorer'

    # Go environment
    export PATH=$PATH:/cygdrive/c/Go/bin

    # change cursor to blinking block
    echo -ne "\x1b[1 q"

    # start gdb
    export CYGWIN="$CYGWIN error_start=gdb -nw %1 %2"
    # generate core dump
    export CYGWIN="$CYGWIN error_start=dumper -d %1 %2"

    ;;
  linux*)
    # Go environment
    export PATH="$PATH:/usr/local/go/bin"
    export GOPATH="$HOME/GoWorkSpace:$HOME/GoProject"
    export GOBIN="$GOPATH/bin"
    export PATH="$PATH:$GOPATH/bin"

    ;;

  darwin*)
    ;;
  }

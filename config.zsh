# completion
## use menu selsect
zstyle ':completion:*' menu select
setopt completealiases

# history
setopt HIST_IGNORE_DUPS

function chpwd() { ls }

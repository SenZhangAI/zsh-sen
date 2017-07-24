alias ga='git add'

alias gb='git branch'
alias gcb='git checkout -b'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcmsg='git commit -m'
alias gco='git checkout'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'

alias gl='git pull'
alias glgp='git log --stat -p'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

alias gp='git push'
alias gpoat='git push origin --all && git push origin --tags'
alias gpu='git push upstream'
alias gpv='git push -v'

alias gsb='git status -sb'
alias gss='git status -s'
alias gst='git status'

alias gts='git tag -s'
alias gtv='git tag | sort -V'

alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias glum='git pull upstream master'

alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

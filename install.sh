#!/bin/bash

# set dir
current_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

zsh_rc=~/.zshrc

backup_file() {
  if [ -L $1 ] || [ -f $1 ]; then
    echo "There's a original file:[$1]exist."
    read -p "Would you like to backup it first? [y/n] " ans

    if [ "$ans" == "y" ]; then
      echo "backup your original $1 to $1-$(date +%Y%m%d)-$backup_rand-bak"
      mv $1 $1$(date +%Y%m%d)-$backup_rand-bak
      return 1;
    fi
  fi
  return 0;
}

backup_file $zsh_rc

cp $current_dir/templates/zshrc.zsh-template $zsh_rc 2>/dev/null

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-sen/zsh-syntax-highlighting
cat ~/.zsh-sen/templates/zsh-syntax-highlighting.zsh-template >> $zsh_rc

system_is() {
  test=$(uname -a 2>/dev/null | grep -i $1)
  if [ -z "$test" ]; then
    return 1
  else
    return 0
  fi
}

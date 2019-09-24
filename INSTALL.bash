#!/bin/bash

###
# Convert to absolute path
# @param $1 path
# @return absolute path
abs_dirname() {
  local path="$1"

  # Check path existence one by one
  while [ -n "$path" ]; do
    cd "${path%/*}"  # Remove the shortest pattern(/*) from right
    local name="${path##*/}"  # Remove the longest pattern(*/) from left
    path="$(readlink "$name" || true)"
  done

  pwd -P  # return string
}

# Make symbolic link at $HOME/.vim
installed_path=$(abs_dirname "$0")
ln --symbolic --no-dereference $installed_path $HOME/.vim

if [[ $? != 0 ]];then
  exit 1
fi

# Add bash setting for vim to bashrc
echo 'export VIM_ROOT=$HOME/.vim' >> $HOME/.bashrc
echo 'source $VIM_ROOT/init.bash' >> $HOME/.bashrc

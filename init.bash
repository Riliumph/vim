### Check Variable
if [ ! -v VIM_ROOT ]; then
  echo 'Environment Value [$VIM_ROOT] is undefined!!'
  return 1
fi

### Avoid conflicted vim command
stty start undef
stty stop undef


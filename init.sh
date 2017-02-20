### Check Variable
if [ ! -v VIM_ROOT ]; then
  echo 'Environment Value [$VIM_ROOT] is undefined!!'
  return 1
fi

if [ ! -v DEIN_ROOT ]; then
  export DEIN_ROOT="$VIM_ROOT/plug-dein"
fi

### Avoid conflicted vim command
stty start undef
stty stop undef


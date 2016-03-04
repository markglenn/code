for lib_file ($HOME/.code/zsh/lib/*.zsh); do
  source $lib_file
done

for plugin_file ($HOME/.code/zsh/plugins/*.zsh); do
  source $plugin_file
done

source $HOME/.code/zsh/themes/basic.zsh-theme

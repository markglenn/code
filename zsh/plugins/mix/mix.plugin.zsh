# Enable shell history for IEX
# https://til.hashrocket.com/posts/is9yfvhdnp-enable-history-in-iex-through-erlang-otp-20-
export ERL_AFLAGS="-kernel shell_history enabled"

if [ -d $HOME/.mix/escripts ]; then
  export PATH=$PATH:$HOME/.mix/escripts
fi

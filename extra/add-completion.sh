if [[ ! -s "$HOME/.bash_profile" && -s "$HOME/.profile" ]] ; then
  profile_file="$HOME/.profile"
else
  profile_file="$HOME/.bash_profile"
fi


if ! grep -q '.cx_completion.bash.inc' "${profile_file}" ; then
  echo "source \"$HOME/.cx_completion.bash.inc\"" >> "${profile_file}"
fi

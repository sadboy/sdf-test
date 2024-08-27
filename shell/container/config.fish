function fish_greeting
  set_color --bold white
  echo "Welcome to the SDF example shell!"
  set_color brgreen
  echo "Try running `sdf` (and `ls`)."
  set_color normal
  echo
  echo "For instructions on using the `fish` shell, run `help`."
end

set __fish_machine "[sdf]"

function fish_prompt_2 
    printf '%s[sdf]%s %s@%s %s%s%s > ' \
        (set_color brblack) (set_color normal) \
        $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

precmd() { 
  # Print a newline before the prompt, unless it's the
  # first prompt in the process.
  if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
      NEW_LINE_BEFORE_PROMPT=1
  elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
      echo ""
  fi
}

PROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%} $(git_prompt_info)%

%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# alias clear to reset new line prompt
alias clear="unset NEW_LINE_BEFORE_PROMPT && clear"

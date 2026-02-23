# Setup fzf
# ---------
if [[ -d /opt/homebrew/opt/fzf/bin ]]; then
  if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
    export PATH="/opt/homebrew/opt/fzf/bin:${PATH}"
  fi
elif [[ -d /usr/share/fzf ]]; then
  :
elif [[ -d /usr/local/opt/fzf/bin ]]; then
  if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
    export PATH="/usr/local/opt/fzf/bin:${PATH}"
  fi
fi

if [[ -d /opt/homebrew/opt/fzf/shell ]]; then
  _fzf_shell_dir="/opt/homebrew/opt/fzf/shell"
elif [[ -d /usr/local/opt/fzf/shell ]]; then
  _fzf_shell_dir="/usr/local/opt/fzf/shell"
elif [[ -d /usr/share/fzf ]]; then
  _fzf_shell_dir="/usr/share/fzf"
fi

# Auto-completion
# ---------------
if [[ $- == *i* && -n "${_fzf_shell_dir:-}" ]]; then
  source "${_fzf_shell_dir}/completion.zsh" 2>/dev/null || true
fi

# Key bindings
# ------------
if [[ -n "${_fzf_shell_dir:-}" ]]; then
  source "${_fzf_shell_dir}/key-bindings.zsh" 2>/dev/null || true
fi

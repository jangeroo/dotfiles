source ~/.dotfiles/bin/aliases_dotfiles
source ~/.dotfiles/bin/custom_prompt

# Homebrew setup
BREW_FILE=/opt/homebrew/bin/brew
if [[ -f "$BREW_FILE" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# # NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

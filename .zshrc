source ~/.dotfiles/bin/aliases_dotfiles
source ~/.dotfiles/bin/custom_prompt

# Homebrew setup
BREW_FILE=/opt/homebrew/bin/brew
if [[ -f "$BREW_FILE" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set up nvm and node
source ~/.zshrc    # source brew settings
brew install nvm

source ~/.zshrc    # source nvm settings
nvm install --lts

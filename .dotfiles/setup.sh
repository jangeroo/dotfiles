source ~/.zshrc

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set up nvm and node
brew install nvm
nvm install --lts

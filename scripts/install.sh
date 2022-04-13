# Navigate to the root of the project
cd $(dirname "$0")/../

# Install dependencies specified in package.list
echo "Installing packages"
xargs -a package.list sudo apt-get install

# Install NVM
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Set up NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node
echo "Installing Node"
nvm install --lts

# Install PNPM
echo "Installing PNPM"
corepack enable
corepack prepare pnpm@6.32.6 --activate
pnpm add -g pnpm

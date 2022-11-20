# Navigate to the root of the project
cd $(dirname "$0")/../

# Upgrade apt packages
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install dependencies specified in package.list
echo "Installing packages"
xargs -a package.list sudo apt-get install

# Install Node
echo "Installing Node"
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install PNPM
echo "Installing PNPM"
corepack enable
corepack prepare pnpm@latest --activate
pnpm setup

# Install ni
echo "Installing ni"
pnpm add -g @antfu/ni

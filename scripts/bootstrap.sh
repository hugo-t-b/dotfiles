# Navigate to the root of the project
cd $(dirname "$0")/../

# Create symlinks
echo "Creating symlinks"
./scripts/link.sh

# Intall packages and NVM
./scripts/install.sh

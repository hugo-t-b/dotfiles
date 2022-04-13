filesToLink=(".bashrc" ".gitconfig")

# Navigate to the root of the project
cd $(dirname "$0")/../

# Create symlinks for each file in the list
for file in ${filesToLink[@]}; do
  if test -f ~/$file; then
    rm ~/$file
  fi
    
  ln $file ~/$file
  echo "Added symlink for $file"
done

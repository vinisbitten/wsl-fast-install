
# edit ~/.zshrc
grep -v "plugins" ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

# remove old zsh-syntax-highlighting
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# remove old zsh-autosuggestions
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
echo "
# >>> plugins >>>
plugins=(
    git
    history
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
    z
)
# <<< plugins <<<" >> ~/.zshrc
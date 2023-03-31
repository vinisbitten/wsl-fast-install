# remove old theme
grep -v "ZSH_THEME" ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

# add Dracula theme
git clone https://github.com/dracula/zsh.git ~/packages/dracula

# remove old theme
rm ~/.oh-my-zsh/themes/dracula.zsh-theme

# link Dracula theme to ZSH config
ln -s ~/packages/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

# add Dracula theme to ZSH config
echo "
# >>> theme >>>
ZSH_THEME=\"dracula\"
# <<< theme <<<">> ~/.zshrc
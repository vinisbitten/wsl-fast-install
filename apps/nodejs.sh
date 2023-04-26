# install nvm (node version manager)
echo "

# >>> node version manager config >>>" >> ~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

echo "
# <<< node version manager config <<<" >> ~/.zshrc

# reload zshrc
source ~/.zshrc

# install, use and set default node version
nvm install node --lts
nvm use node --lts
nvm alias default node

# install gitmoji
npm i -g gitmoji-cli
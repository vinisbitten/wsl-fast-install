# instalation folder
mkdir ~/packages

# create a backup of the .zshrc file
mv ~/.zshrc ~/packages/zsh.bkp
touch ~/.zshrc

# >>>>>>>>>>>>>>> my zsh configuration >>>>>>>>>>>>>>>>
echo "# My personal zsh configuration for wsl #
" >> ~/.zshrc

# install zsh theme, plugins and aliases
zsh ./zsh/plugins.sh
zsh ./zsh/aliases.sh
zsh ./zsh/dracula.sh

# ask for docker credentials and github global name and email
read "DockerUsername?Enter your docker hub username: "
echo ""
read -s "DockerPassword?Enter your docker hub password: "
echo "" 
read "GithubName?Enter your github global name: "
echo ""
read "GithubEmail?Enter your github global email: "

# git configuration
zsh ./git/git.sh $GithubName $GithubEmail 

# install apps
zsh ./apps/docker.sh $DockerUsername $DockerPassword
zsh ./apps/go.sh
zsh ./apps/miniconda.sh
zsh ./apps/nodejs.sh

echo "
# My personal zsh configuration for wsl #" >> ~/.zshrc
# <<<<<<<<<<<<<<<< my zsh configuration <<<<<<<<<<<<<<<<

# Divisor
echo "
" >> ~/.zshrc

# >>>>>>>>>>>>>>> default zsh configuration >>>>>>>>>>>>>>>>
echo "# ZSH default configuration #
" >> ~/.zshrc

# export and source oh-my-zsh
echo "# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh
" >> ~/.zshrc

echo "# ZSH default configuration #" >> ~/.zshrc
# <<<<<<<<<<<<<<<< default zsh configuration <<<<<<<<<<<<<<<<

echo "
.------------------------------------.
|     ZSH configuration finished     |
|                                    |
|reboot your system to apply changes.|
.------------------------------------.
"
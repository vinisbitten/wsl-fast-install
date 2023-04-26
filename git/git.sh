# unset credential helper
git config --global --unset credential.helper

# set git to use the credential memory cache
git config --global credential.helper cache

# set the cache to timeout after 10 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=36000'

# set permissions
sudo chmod 600 git/private-keys/*
sudo chmod 644 git/public-keys/*
sudo chmod 644 git/config

# check if .ssh folder exist
if [ ! -d "$HOME/.ssh" ]; then
    mkdir "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

# create temp folder
mkdir git/temp

# import private keys
cp -r git/private-keys/* git/temp

# move keys to .ssh folder
sudo mv git/temp/* ~/.ssh/

# import public keys
cp -r ./git/public-keys/* git/temp

# move keys to .ssh folder
sudo mv git/temp/* ~/.ssh/

# import git config
cp -r ./git/config git/temp

# move config to .ssh folder
sudo mv git/temp/* ~/.ssh/

# remove temp folder
rm -rf git/temp

# configure git
if [ $# -eq 1 ]; then
    git config --global user.name $1
fi

if [ $# -eq 2 ]; then
    git config --global user.name $1
    git config --global user.email $2
fi
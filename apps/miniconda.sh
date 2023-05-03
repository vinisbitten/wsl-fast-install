# download miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# install miniconda
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/packages/miniconda

# add conda to path
~/packages/miniconda/bin/conda init zsh

# remove miniconda installer
rm Miniconda3-latest-Linux-x86_64.sh

# reload zshrc
source ~/.zshrc

# configure conda to not activate base environment on startup
conda config --set auto_activate_base false

# install conda packages
conda install jupyter -y

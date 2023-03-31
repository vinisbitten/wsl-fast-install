# if no username is given, close the script
if [ -z "$1" ]; then
    echo "no username specified"
    exit 1
fi

# rm old mappings
rm ~/win

# limit wsl memory and cpu usage
sudo echo "[wsl2]
memory=8GB
processors=6
" > /mnt/c/Users/$1/.wslconfig

# enable systemd
echo "[boot]
systemd=true
" > wsl.conf

sudo mv wsl.conf /etc

# symlink windows home directory to linux home directory
ln -s /mnt/c/Users/$1/Desktop ~/win

# check for updates
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# install dependencies
sudo apt install curl git wget xz-utils zsh -y

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# open zsh
exec zsh
# install dependencies
sudo apt update && sudo apt upgrade
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update source and donwload Docker
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# add user to docker group
sudo usermod -aG docker $(whoami)

# install docker-compose
sudo apt install docker-compose -y

# if credentials are provided
if [ $# -eq 2 ]; then
    # store credentials in .dockerconfig file using base64 encoding
    echo "auths:
      https://index.docker.io/v1/:
        auth: $(echo -n $1:$2 | base64)" > ~/.dockerconfig
fi

# install docker
sudo apt install docker.io -y

# add user to docker group
sudo usermod -aG docker $(whoami)

# install docker-compose
sudo apt install docker-compose -y

# create a .dockerconfig file to store docker credentials
touch ~/.dockerconfig

# if credentials are provided
if [ $# -eq 2 ]; then
    # store credentials in .dockerconfig file using base64 encoding
    echo "auths:
      https://index.docker.io/v1/:
        auth: $(echo -n $1:$2 | base64)" > ~/.dockerconfig
fi

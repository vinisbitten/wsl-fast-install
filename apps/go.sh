# Remove previous Go installation
sudo rm -rf /usr/local/go

# Download the Go binary
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz

# Extract the archive
sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz

# Add Go to the PATH
echo '
# >>> Go lang configs >>>
export GOROOT=/usr/local/go
export GOPATH=$HOME/packages/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# <<< Go lang configs <<<' >> ~/.zshrc

# Remove the downloaded archive
rm go1.20.2.linux-amd64.tar.gz

# Reload zshrc
source ~/.zshrc

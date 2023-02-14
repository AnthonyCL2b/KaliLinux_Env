
# Define function:
function install() {
    docker build . -t mykali-docker

    echo "Image built!"
    echo "Setting up aliases for easy access..."
    # if alias already exists, remove it:
    sed -i '' '/alias kali-vol/d' ~/.bashrc
    sed -i '' '/alias kali-vol/d' ~/.zshrc
    echo "alias kali-vol='docker run -it -v kali-volume:/workspace mykali-docker'" >> ~/.bashrc
    echo "alias kali-vol='docker run -it -v kali-volume:/workspace mykali-docker'" >> ~/.zshrc
    
    echo "kali-vol: Alias set!"
    echo "kali-vol is an alian to run the docker image with a volume attached to it."

    sed -i '' '/alias kali-local/d' ~/.bashrc
    sed -i '' '/alias kali-local/d' ~/.zshrc
    echo "alias kali-local='docker run -it -v /:/workspace mykali-docker'" >> ~/.bashrc
    echo "alias kali-local='docker run -it -v /:/workspace mykali-docker'" >> ~/.zshrc

    echo "kali-local: Alias set!"
    echo "kali-local is an alian to run the docker image with the local root directory attached to it."

    source ~/.bashrc
    zsh
    echo "Installation complete!"
}

# check if docker daemon is running:
docker ps > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Starting Docker Daemon..."
    open -a Docker
    # Wait for docker daemon to start:
    while ! docker ps > /dev/null 2>&1; do
        sleep 1
    done
    echo "Docker Daemon started!"
    echo "Install Kali Docker Image..."
    install
    exit 1
else
    echo "Install Kali Docker Image..."
    install
    exit 1
fi

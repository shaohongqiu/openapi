- Install docker and docker compose
```shell
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  noble stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version
docker compose version

sudo usermod -aG docker $USER
newgrp docker

sudo systemctl status docker
sudo systemctl start docker


- Install gawk gcc make
```shell
sudo apt-get update
sudo apt-get install gawk gcc make
sudo apt install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libffi-dev \
    libncurses5-dev \
    libncursesw5-dev \
    liblzma-dev \
    tk-dev \
    uuid-dev \
    curl
# or MacOS：
brew install gawk gcc
```

- Install Java
```shell
sudo apt-get install default-jdk
```


- Install pyenv
```shell
curl https://pyenv.run | bash
```

- Add pyenv to your shell:
Add these lines to your ~/.bashrc (Ubuntu) or ~/.zshrc (MacOS):
```shell
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

- install python 3.12.6
```shell
source ~/.bashrc
pyenv install 3.12.6
```

- If you haven't installed Poetry yet, you can install it using the following command:
```shell
curl -sSL https://install.python-poetry.org | python3 -

Add these lines to your ~/.bashrc
export PATH="/home/ubuntu/.local/bin:$PATH"

source ~/.bashrc
poetry --version
```

- Specify the Python Version
```shell
pyenv local 3.12.6
poetry env use $(pyenv which python)
```

- Install Project Dependencies
Navigate to your project directory and install the dependencies specified in pyproject.toml:
```shell
eval $(poetry env activate)
poetry install
```

- Activate the Virtual Environment
Poetry automatically manages virtual environments for you. To activate the virtual environment, you can use the following command:
```shell
poetry shell
```


- Install the latest npm
```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install lts/jod
nvm use lts/jod
```

- Verify the node and npm version
```shell
node -v
v22.17.1
npm -v
11.5.2
```

- Install openapi-generator-cli
```shell
npm install @openapitools/openapi-generator-cli -g
```

- Install @redocly/cli
The actively maintained @redocly/cli for combining OpenAPI files.
```shell
npm install -g @redocly/cli
```

- Generate the apis and models
Since the apis and models are not in the repo, we need to generate it.
```shell
./generate_api.sh
```

- Build mssp docker image and run (network configured in docker-compose.yml)
```shell
cd src/generated/
docker compose up
```

- Install gawk gcc git
```shell
sudo apt-get install gawk gcc git
# or Amazon linux
sudo yum install gawk gcc git

sudo dnf groupinstall "Development Tools" -y

sudo dnf install -y \
  openssl-devel \
  libffi-devel \
  bzip2-devel \
  xz-devel \
  xz-libs \
  sqlite-devel \
  readline-devel \
  zlib-devel \
  tk-devel \
  gdbm-devel \
  uuid-devel

# or MacOS：
brew install gawk gcc
```

- Install Java
```shell
sudo apt-get install default-jdk
# or Amazon linux
sudo dnf install java-17-amazon-corretto -y
```


- Install pyenv
```shell
curl https://pyenv.run | bash
```

- Add pyenv to your shell:
Add these lines to your ~/.bash_profile (Ubuntu) or ~/.zshrc (MacOS):
```shell
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

- install python 3.12.6
```shell
pyenv install 3.12.6
```

- If you haven't installed Poetry yet, you can install it using the following command:
```shell
curl -sSL https://install.python-poetry.org | python3 -
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
docker-compose up
```


# Initial setup script

echo 'macOS fixes'
bash mac-os-fixes.sh

echo 'install mac apple store command line - mas'
brew install mas

alias i='echo Installing'

i '1Password and Pixelmator'
mas install 443987910  # 1Password - Password Manager and Secure Wallet
mas install 407963104  # Pixelmator

i 'Xcode'
xcode-select --install

i 'Brew/Cask'

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

i 'Brew tools'

brew_list=(
  bash-completion
  coreutils

  docker
  docker-machine

  git
  git-extras
  ag # command-line code search tool
  curl
  node
  yarn
  # watchman - Watchman exists to watch files and record when they change. It can also trigger actions

  # postgres
  # mongodb
  # redis
  # nginx
)

brew install ${brew_list[@]}

i 'Cask tools'

cask_list=(
  firefox
  google-chrome
  sequalpro
  slack
  virtualbox # installs system ext that needs permission update
  visual-studio-code
)

brew cask install --appdir="/Applications" ${cask_list[@]}

i 'Node tools'

node_list=(
  nvm
  http-server
)

npm install --global ${node_list[@]}

echo Cleaning up
brew cleanup
brew cask cleanup

unalias i

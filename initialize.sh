
# Initial setup script

echo 'macOS fixes'
bash mac-os-fixes.sh

echo 'install mac apple store command line - mas'
brew install mas

alias i='echo Installing'

i 'Pixelmator'

mas install 407963104  # Pixelmator

i 'Xcode'
xcode-select --install

i 'Brew/Cask'

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask-versions
brew update

i 'Brew tools'

brew_list=(
  ag # command-line code search tool
  coreutils
  curl
  git
  git-extras
  go
  node
  yarn
  zsh # for oh-my-zsh
)

brew install ${brew_list[@]}

i 'Cask tools'

cask_list=(
  1password
  audacity
  balenaetcher
  brave-browser
  figma
  iterm2
  licecap
  # mamp # for a2j dev only
  postman
  sequel-pro
  signal
  slack
  visual-studio-code
  zoom
)

brew install --cask --appdir="/Applications" ${cask_list[@]}

i 'Node tools'

node_list=(
  nvm
  http-server
)

npm install --global ${node_list[@]}

echo Cleaning up
brew cleanup

unalias i

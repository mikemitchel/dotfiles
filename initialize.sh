
# Initial setup script

echo 'macOS fixes'
bash mac-os-fixes.sh

echo 'install mac apple store command line - mas'
brew install mas

alias i='echo Installing'

i 'Pixelmator'

mas install 407963104  # Pixelmator

i 'Pages'
mas install 409201541  # Pages

i 'Keynote'
mas install 409183694  # Keynote

i 'Numbers'
mas install 409203825  # Numbers

i 'BetterSnapTool'
mas install 417375580  # BetterSnapTool

i 'Xcode'
xcode-select --install

i 'Oh My Zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

i 'Brew/Cask'

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

i 'Brew tools'

brew_list=(
  ag # command-line code search tool
  coreutils
  curl
  fnm
  ghostscript
  git
  git-extras
  go
  http-server
  node
  openssl
  pocketbase
  pyenv
  python@3
  python-tk
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
  docker
  figma
  iterm2
  licecap
  # mamp # for a2j dev only
  postman
  sequel-ace
  signal
  slack
  visual-studio-code
  zoom
)

brew install --cask --appdir="/Applications" ${cask_list[@]}

echo Cleaning up
brew cleanup

unalias i

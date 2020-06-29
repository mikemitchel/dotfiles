# Moderately modified from https://github.com/andrejewski/dotfiles.git

# Dotfiles

These are my configuration files for `zsh` and `git`.
They include aliases, custom functions, and more aliases.

If you want to outright steal my files without cherry-picking snippets you want,
clone this repo and run `zsh import.sh` inside. That command will write my
configs to the right places, overriding anything that already exists.

The `initialize.sh` script downloads the baseline software and apps
that I use. This is for fresh macOS devices.

## Fresh computers

Here are the steps (macOS):

1. Max out trackpad speed. `System Preferences > Trackpad > Tracking speed`
1. Right click trackpad. `System Preferences > Trackpad > Secondary click`
1. Make Caps Lock another Control key. `System Preferences > Keyboard > Modifier Keys (bottom right)`
1. Download `dotfiles`:

    ```sh
    cd && mkdir -p Projects
    cd Projects
    git clone https://github.com/mikemitchel/dotfiles.git
    cd dotfiles
    bash initialize.sh
    bash import.sh
    ```

1. Sign into Firefox

#### Optionals

1. Get Source Code Pro
    - [Download fonts](https://github.com/tonsky/FiraCode)
    - `Font Book > ⌘-O` and add all fonts from download.
    - Choose `Resolve automatically`

1. Install Password manager

## Contributing

n/a at this point

# VS Code
1. List extensions on current mac, and print the command to install on new machine:

code --list-extensions | xargs -L 1 echo code --install-extension

....
code --install-extension 2gua.rainbow-brackets
code --install-extension chenxsan.vscode-standardjs
code --install-extension dbaeumer.jshint
code --install-extension DotJoshJohnson.xml
code --install-extension eamodio.gitlens
code --install-extension felixfbecker.php-debug
code --install-extension file-icons.file-icons
code --install-extension mrmlnc.vscode-apache
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension numso.prettier-standard-vscode
code --install-extension oderwat.indent-rainbow
code --install-extension redhat.vscode-xml
code --install-extension streetsidesoftware.code-spell-checker


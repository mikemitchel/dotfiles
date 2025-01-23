# Moderately modified but mostly stolen from https://github.com/andrejewski/dotfiles.git

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

1. Download `dotfiles`:

   ```sh
   cd ~
   mkdir Projects
   cd Projects
   git clone https://github.com/mikemitchel/dotfiles.git
   cd dotfiles
   zsh initialize.sh
   zsh import.sh
   ```

#### Optionals

1. Get FiraCode Font
   - [Download fonts](https://github.com/tonsky/FiraCode)
   - `Font Book > ⌘-O` and add all fonts from download.
   - Choose `Resolve automatically`

## Contributing

n/a at this point

# VS Code

Using the built-in sync tool for vs-code settings and extensions

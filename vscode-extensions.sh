# code --install-extension bierner.github-markdown-preview
# code --install-extension bierner.markdown-checkbox
# code --install-extension bierner.markdown-emoji
# code --install-extension bierner.markdown-footnotes
# code --install-extension bierner.markdown-mermaid
# code --install-extension bierner.markdown-preview-github-styles
# code --install-extension bierner.markdown-yaml-preamble
# code --install-extension eamodio.gitlens
# code --install-extension esbenp.prettier-vscode
# code --install-extension golang.go
# code --install-extension ms-azuretools.vscode-docker
# code --install-extension ms-python.debugpy
# code --install-extension ms-python.python
# code --install-extension ms-python.vscode-pylance
# code --install-extension ms-vscode-remote.remote-containers
# code --install-extension pdconsec.vscode-print
# code --install-extension standard.vscode-standard
# code --install-extension svelte.svelte-vscode
# code --install-extension tomoki1207.pdf

#!/bin/zsh

filename="vs_code_extensions_list.txt"

while read -r line; do
  code --install-extension "$line"
done < "$filename"
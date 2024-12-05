#!/bin/zsh

filename="vs_code_extensions_list.txt"

while read -r line; do
  code --install-extension "$line"
done < "$filename"
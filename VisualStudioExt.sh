#!/bin/bash -eux

code --list-extensions >> vs_code_extensions_list.txt

cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
echo "This removes extensions"
echo "code --list-extensions | xargs -n 1 code --uninstall-extension "

echo "atom version"
#apm list --installed --bare > Atom_plugins.list 
#apm install `cat Atom_plugins.list`



#!/bin/sh

# Is VSCode installed?
CODE_PATH=`which code`

if [ $? -eq 0 ]; then
    # General helper
    code --install-extension tyriar.sort-lines

    # Spell checking
    code --install-extension streetsidesoftware.code-spell-checker
    code --install-extension streetsidesoftware.code-spell-checker-german
    code --install-extension adamvoss.vscode-languagetool
    code --install-extension valentjn.vscode-ltex

    # LaTeX
    code --install-extension james-yu.latex-workshop

    # Markdown
    code --install-extension yzhang.markdown-all-in-one
    code --install-extension darkriszty.markdown-table-prettify

    # Programming
    ## C and C++
    code --install-extension ms-vscode.cpptools

    ## PHP
    code --install-extension bmewburn.vscode-intelephense-client
    code --install-extension mblode.twig-language-2

    ## Python
    code --install-extension ms-python.vscode-pylance
    code --install-extension ms-python.python

    ## Ruby
    code --install-extension rebornix.ruby
    code --install-extension wingrunr21.vscode-ruby

    # UI
    code --install-extension pkief.material-icon-theme
fi

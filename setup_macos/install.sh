#!/bin/bash

## common
brew install gpg gawk

## devtools
brew install asdf

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add rust https://github.com/code-lever/asdf-rust.git
asdf plugin add python https://github.com/danhper/asdf-python.git
asdf plugin add php https://github.com/asdf-community/asdf-php.git
asdf plugin add golang https://github.com/kennyp/asdf-golang.git
asdf plugin add scala https://github.com/mtatheonly/asdf-scala.git
asdf plugin add haskell https://github.com/vic/asdf-haskell.git

### Python
asdf install python latest
asdf global python latest

### Ruby
asdf install ruby latest
asdf global ruby latest

### NodeJS
asdf install nodejs latest
asdf global nodejs latest

### Java
asdf install java zulu-11.50.19
asdf install java zulu-17.28.13
asdf global java zulu-17.28.13

### additional tools
npm install -g envinfo

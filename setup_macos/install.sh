#!/bin/bash

## common
brew install gnupg gpg gawk
brew install yadm stats tree
brew install imagemagick librsvg

## sdk
brew install asdf watchman cocoapods

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

### Golang
asdf install golang latest
asdf global golang latest

### Rust
export RUST_WITHOUT=rust-docs
asdf install rust latest
asdf global rust latest

### PHP, TODO: still not working
# brew install bison re2c libgd libiconv pkg-config gmp libsodium imagemagick
# y | cpan GD
# asdf install php latest
# asdf global php latest

### additional tools
npm install -g npm-check-updates nls envinfo
brew install fastlane

## 3rd Party
npm install -g firebase-tools appcenter-cli @sentry/cli

## IDE / Editors
brew install tmux neovim ripgrep fzf jq fd bat

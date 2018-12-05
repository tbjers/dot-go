#!/usr/bin/env bash
#
# tbjers/dot-node ellipsis package

pkg.link() {
  fs.link_rfile "$PKG_PATH" "$HOME/.go"
}

pkg.install() {
  case $(os.platform) in
    osx)
      brew install go
      ;;
  esac
  mkdir $HOME/go
	mkdir -p $HOME/go/src/github.com/tbjers
}

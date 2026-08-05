# homebrew-notomo

Homebrew tap for [Notomo](https://notomo.app/).

## Install

```sh
brew tap natsustan/notomo
brew trust natsustan/notomo
brew install --cask notomo
```

Homebrew 6+ requires `brew trust` before installing from a third-party tap.

## Update

Notomo updates itself with Sparkle after install. The cask sets `auto_updates true`, so `brew upgrade` skips it by default.

Force a Homebrew reinstall when needed:

```sh
brew reinstall --cask notomo
```

## Source

The cask is maintained in the Notomo app repository and published here for `brew tap`.

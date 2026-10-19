# homebrew-notomo

> **Deprecated:** Notomo is now in the official Homebrew Cask repository.
> This tap is no longer updated.

## Install

```sh
brew install --cask notomo
```

See [formulae.brew.sh/cask/notomo](https://formulae.brew.sh/cask/notomo).

## Existing tap users

`tap_migrations.json` moves installed `notomo` casks to `homebrew/cask` on your
next `brew update`. Your app, settings, and license are untouched, and Notomo
keeps updating itself through Sparkle.

To finish cleanup manually:

```sh
brew update
brew untap natsustan/notomo
```

If `untap` reports that `notomo` is still installed from this tap, reinstall it
from the official cask (uninstalling without `--zap` keeps settings and license):

```sh
brew uninstall --cask notomo
brew untap natsustan/notomo
brew install --cask notomo
```

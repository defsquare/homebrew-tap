# homebrew-specy

Homebrew tap for [**specy-cli**](https://gitlab.com/defsquare/specy/cli) — an interactive
editor for the `.spec` structure-declaration DSL, distributed as a self-contained
macOS arm64 native binary (no JDK or Clojure required).

## Install

```bash
brew tap defsquare/specy
brew install specy
```

> **Recent Homebrew — untrusted tap:** newer Homebrew refuses to load a formula
> from a third-party tap until you trust it. If `brew install` errors with
> *"Refusing to load formula … from untrusted tap"*, run `brew trust defsquare/specy`
> once, then re-run `brew install specy`.

Then open a spec in the editor (targets a directory, default: current dir):

```bash
specy edit .
```

Update to the latest release with:

```bash
brew upgrade specy
```

The one-shot form `brew install defsquare/specy/specy` also works.

## Platform support

macOS **arm64** only for now. The formula refuses other platforms cleanly;
Intel/Linux builds are not published yet.

## About this tap

The `Formula/specy.rb` formula is generated and pushed here automatically by
specy's release script (`bin/release.sh` in the main repository), which builds
the native binary, uploads a versioned tarball to Cloudflare R2, and pins its
`url` + `sha256` in the formula. Do not edit the formula by hand — it is
overwritten on every release.

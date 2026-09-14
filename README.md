# defsquare/homebrew-tap

Homebrew formulas for defsquare's command-line tools.

```bash
brew install defsquare/tap/datagraph   # explore a JSON document as an interactive graph
brew install defsquare/tap/specy       # interactive editor for the .spec DSL
```

(Equivalently: `brew tap defsquare/tap`, then `brew install <tool>`. This repo
was previously named `homebrew-specy`; an existing `brew tap defsquare/specy`
keeps working through GitHub's rename redirect.)

> **Recent Homebrew — untrusted tap:** newer Homebrew refuses to load a formula
> from a third-party tap until you trust it. If `brew install` errors with
> *"Refusing to load formula … from untrusted tap"*, run `brew trust defsquare/tap`
> once, then re-run the install.

Update to the latest releases with `brew upgrade`.

## Tools

- [**datagraph**](https://github.com/defsquare/datagraph) — explore a JSON
  document as an interactive graph of records and references. macOS **arm64**
  binary; on an Intel Mac, build from source (see its README).
- [**specy**](https://gitlab.com/defsquare/specy/cli) — interactive editor for
  the `.spec` structure-declaration DSL, self-contained macOS **arm64** binary
  (no JDK or Clojure required). Both formulas refuse other platforms cleanly.

## Do not hand-edit the formulas

`Formula/*.rb` is generated; any manual change is overwritten by the next
release. Fix the template in the tool's own repository instead:

- `datagraph.rb` is rendered from `Formula/datagraph.rb.tmpl` in
  [defsquare/datagraph](https://github.com/defsquare/datagraph) and pushed
  here by that repository's release script (`bin/release.sh`), which uploads
  a versioned tarball to Cloudflare R2 and pins its `url` + `sha256` here.
- `specy.rb` is rendered and pushed by specy's release script
  (`bin/release.sh` in its main repository), which uploads a versioned tarball
  to Cloudflare R2 and pins its `url` + `sha256` here.

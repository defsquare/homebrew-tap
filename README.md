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

- [**datagraph**](https://github.com/defsquare/data-graph) — explore a JSON
  document as an interactive graph of records and references. Universal macOS
  binary (Apple silicon + Intel).
- [**specy**](https://gitlab.com/defsquare/specy/cli) — interactive editor for
  the `.spec` structure-declaration DSL, self-contained macOS **arm64** binary
  (no JDK or Clojure required). The formula refuses other platforms cleanly.

## Do not hand-edit the formulas

`Formula/*.rb` is generated; any manual change is overwritten by the next
release. Fix the template in the tool's own repository instead:

- `datagraph.rb` is rendered from `Formula/datagraph.rb.tmpl` in
  [defsquare/data-graph](https://github.com/defsquare/data-graph) and pushed
  here by that repository's release workflow on every `v*` tag.
- `specy.rb` is rendered and pushed by specy's release script
  (`bin/release.sh` in its main repository), which uploads a versioned tarball
  to Cloudflare R2 and pins its `url` + `sha256` here.

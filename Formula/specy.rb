class Specy < Formula
  desc     "Interactive editor for the .spec structure-declaration DSL"
  homepage "https://gitlab.com/defsquare/specy/cli"
  url      "https://dl.specy-cli.defsquare.com/specy/specy-0.1.2-darwin-arm64.tar.gz"
  version  "0.1.2"
  sha256   "bb436ac45a8bb0e419964d9a250cf2b39dd625e54a69c835764da2a150c1cd5e"
  license  :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "specy"
  end

  test do
    # specy has no --help; with no valid args it prints usage and exits 1.
    output = shell_output("#{bin}/specy 2>&1", 1)
    assert_match "Usage: specy edit", output
  end
end

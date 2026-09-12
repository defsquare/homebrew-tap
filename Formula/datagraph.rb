class Datagraph < Formula
  desc     "Explore a JSON document as an interactive graph of records and references"
  homepage "https://gitlab.com/defsquare/datagraph"
  url      "https://dl.datagraph.defsquare.com/datagraph/datagraph-0.1.0-darwin-arm64.tar.gz"
  version  "0.1.0"
  sha256   "c181e590187552fb3a9b6c26ff27cfa4a9145472b652daf472114cf152d55e98"
  license  "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "datagraph"
  end

  test do
    assert_match "datagraph", shell_output("#{bin}/datagraph --help")
  end
end

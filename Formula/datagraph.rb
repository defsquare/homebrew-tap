class Datagraph < Formula
  desc     "Explore a JSON document as an interactive graph of records and references"
  homepage "https://github.com/defsquare/datagraph"
  url      "https://dl.datagraph.defsquare.com/datagraph/datagraph-0.1.1-darwin-arm64.tar.gz"
  version  "0.1.1"
  sha256   "415889fca6a19e0172b1aa5294d2fdc01e19504d9e4a4d59b96d6f1e8ed3a5f5"
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

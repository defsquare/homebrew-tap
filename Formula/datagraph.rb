class Datagraph < Formula
  desc     "Explore a JSON document as an interactive graph of records and references"
  homepage "https://github.com/defsquare/datagraph"
  url      "https://dl.datagraph.defsquare.com/datagraph/datagraph-0.1.2-darwin-arm64.tar.gz"
  version  "0.1.2"
  sha256   "66c823dbcfab91d087c4149ea461ef811e5a435caef98ed533adb060361bcd1c"
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

class Datagraph < Formula
  desc     "Explore a JSON document as an interactive graph of records and references"
  homepage "https://github.com/defsquare/datagraph"
  url      "https://dl.datagraph.defsquare.com/datagraph/datagraph-0.2.0-darwin-arm64.tar.gz"
  version  "0.2.0"
  sha256   "bcc3661f2ff489532b78378067c23c8e7128872d2e6fe47f58631b0f10be7b8b"
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

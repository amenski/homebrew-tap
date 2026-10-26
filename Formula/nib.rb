class Nib < Formula
  desc "Terminal AI coding agent you can inspect, configure, and own"
  homepage "https://github.com/amenski/nib"
  url "https://registry.npmjs.org/@amenski/nib/-/nib-0.7.0.tgz"
  sha256 "ef8bccbdc2997f9e9373e0880e01d1ed5cde54c4f5c31e93a5a95b79dd3b1cbe"
  license "Apache-2.0"

  depends_on "node"
  uses_from_macos "git"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/nib"
  end

  test do
    output = shell_output("#{bin}/nib doctor")
    assert_match "nib doctor", output
    assert_match "API key", output
  end
end

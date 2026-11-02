class Nib < Formula
  desc "Terminal AI coding agent you can inspect, configure, and own"
  homepage "https://github.com/amenski/nib"
  url "https://registry.npmjs.org/@amenski/nib/-/nib-0.8.0.tgz"
  sha256 "cfdcc5815fefdc0326d6bfc25b0b42517387b467d5208a151f14e79255b6e6ea"
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

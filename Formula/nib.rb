class Nib < Formula
  desc "Terminal AI coding agent you can inspect, configure, and own"
  homepage "https://github.com/amenski/nib"
  url "https://registry.npmjs.org/@amenski/nib/-/nib-0.6.0.tgz"
  sha256 "222327e95b8bd2bc893e66fdcadbae2226fa67c9794a3482989b6f395f50b703"
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

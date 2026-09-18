class Nib < Formula
  desc "Terminal AI coding agent you can inspect, configure, and own"
  homepage "https://github.com/amenski/nib"
  url "https://registry.npmjs.org/@amenski/nib/-/nib-0.5.1.tgz"
  sha256 "c7da4487eac86a505bbb8d6c4033e777ad0880ec1db0ad50be9e290097cea295"
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

class Vanity < Formula
  desc "Generate redirect for Go vanity import paths"
  homepage "https://github.com/uradical/vanity"
  url "https://github.com/uRadical/vanity/releases/download/v1.0.0/vanity_1.0.0_darwin_arm64.tar.gz"
  sha256 "9827304f4819b49b7215a197dc4ba4d80f5812b88638667437be96267b06770c"
  license "GPL-3.0"

  # Only runs on macOS with Apple Silicon
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vanity"
  end

end

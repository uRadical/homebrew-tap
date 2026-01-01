class Vanity < Formula
  desc "Generate redirect for Go vanity import paths"
  homepage "https://github.com/uradical/vanity"
  url "https://github.com/uRadical/vanity/releases/download/v1.0.1/vanity_1.0.1_darwin_arm64.tar.gz"
  sha256 "021151a7ad478a398a473ecfce36c5ed732bb29a8ce97bfa18961140166e13e7"
  license "GPL-3.0"

  # Only runs on macOS with Apple Silicon
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vanity"
  end

end

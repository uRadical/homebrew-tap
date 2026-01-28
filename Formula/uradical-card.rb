class UradicalCard < Formula
  desc "Generate branded social media cards with custom title and photo"
  homepage "https://github.com/uRadical/uradical-card"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    else
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "uradical-card"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/uradical-card -h", 0)
  end
end

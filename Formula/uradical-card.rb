class UradicalCard < Formula
  desc "Generate branded social media cards with custom title and photo"
  homepage "https://github.com/uRadical/uradical-card"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_darwin_arm64.tar.gz"
      sha256 "85b72a5883ed97a097da901118eb7e88bef67f6a9587535358ff34c660ca292f"
    else
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_darwin_amd64.tar.gz"
      sha256 "cdff90240e3fad4678416632ffe0e085cc5d4d5a3674096d233244d3028096c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_linux_arm64.tar.gz"
      sha256 "29e3a8c82482f6128662baafcfc73a5b4372164030e19efd5ed10def098c1c6e"
    else
      url "https://github.com/uRadical/uradical-card/releases/download/v1.0.0/uradical-card_1.0.0_linux_amd64.tar.gz"
      sha256 "c5b30af639930de1134cee4a9d59ac3007172d0c570e715a270f7655324c1898"
    end
  end

  def install
    bin.install "uradical-card"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/uradical-card -h", 0)
  end
end

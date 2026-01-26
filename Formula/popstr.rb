class Popstr < Formula
  desc "Emit lines from stdin or file with optional delay"
  homepage "https://github.com/uRadical/popstr"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/popstr/releases/download/v1.0.0/popstr_1.0.0_darwin_arm64.tar.gz"
      sha256 "924d6f9b9859e0c23d3f524187d987c65a418cb610734b5deb04bec79376bf7e"
    else
      url "https://github.com/uRadical/popstr/releases/download/v1.0.0/popstr_1.0.0_darwin_amd64.tar.gz"
      sha256 "40a1151ed78dd55162cc4913db17c3c7409216170bcfe0da4cc6036368106689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/popstr/releases/download/v1.0.0/popstr_1.0.0_linux_arm64.tar.gz"
      sha256 "8e17814d257dfb566f0b6fab498f3d308ee9c98b58a2cda0d19e462ee2865032"
    else
      url "https://github.com/uRadical/popstr/releases/download/v1.0.0/popstr_1.0.0_linux_amd64.tar.gz"
      sha256 "3506f8021b4d157e2abb8a5eea53893dac19e61b1819bd7469fb3392bc15dc21"
    end
  end

  def install
    bin.install "popstr"
  end

  test do
    assert_match "popstr 1.0.0", shell_output("#{bin}/popstr --version")
  end
end

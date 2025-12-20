class Iso2usb < Formula
  desc "TUI for writing ISO images to USB drives on macOS"
  homepage "https://github.com/uRadical/iso2usb"
  url "https://github.com/uRadical/iso2usb/releases/download/v1.0.0/iso2usb.sh",
      using: :nounzip
  sha256 "96acaf73c46c068acdee96563e105f322d2cd9f4753f7752d46d8fd73269f088"
  license "MIT"

  depends_on "dialog"
  depends_on :macos

  def install
    bin.install "iso2usb.sh" => "iso2usb"
  end
end

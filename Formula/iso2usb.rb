class Iso2usb < Formula
  desc "TUI for writing ISO images to USB drives on macOS"
  homepage "https://github.com/uRadical/iso2usb"
  url "https://github.com/uRadical/iso2usb.git",
      using: :git,
      tag: "v1.0.0",
      revision: "5e76194ca06739c1295d7643d6a5b09d5c10e3d0"
  license "MIT"

  depends_on "dialog"
  depends_on :macos

  def install
    bin.install "iso2usb.sh" => "iso2usb"
  end
end

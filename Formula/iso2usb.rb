class Iso2usb < Formula
  desc "TUI for writing ISO images to USB drives on macOS"
  homepage "https://github.com/uRadical/iso2usb"
  url "https://raw.githubusercontent.com/uRadical/iso2usb/v1.0.0/iso2usb.sh"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "dialog"
  depends_on :macos

  def install
    bin.install "iso2usb.sh" => "iso2usb"
  end

  test do
    assert_match "dialog is required", shell_output("#{bin}/iso2usb 2>&1", 1)
  end
end

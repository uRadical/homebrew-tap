class File2qr < Formula
  desc "Convert files to QR codes"
  homepage "https://github.com/uradical/file2qr"
  url "https://github.com/uRadical/file2qr/releases/download/v1.0.1/file2qr-1.0.1-macos.tar.gz"
  sha256 "7fa587a67601de3f6f9bfb1f966c498ef7175118c15ada94c03d75e03a7f7201"
  license "GPL-3.0-or-later"

  def install
    # More robust installation that finds the binary regardless of subdirectory
    binary = Dir["**/file2qr-darwin-amd64"].first
    bin.install binary => "file2qr"
    
    man_page = Dir["**/file2qr.1"].first
    man1.install man_page if man_page
  end

  test do
    assert_match "file2qr #{version}", shell_output("#{bin}/file2qr -v")
  end
end

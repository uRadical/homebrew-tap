class File2qr < Formula
  desc "Convert files to QR codes"
  homepage "https://github.com/uradical/file2qr"
  url "https://github.com/uRadical/file2qr/releases/download/v1.0.0/file2qr-1.0.0-macos.tar.gz"
  sha256 "a35ccb59df8f98190b403a191c75c3295ef1103ea64945308f5a890530efba31"
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
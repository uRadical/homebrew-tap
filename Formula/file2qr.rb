class File2qr < Formula
  desc "Convert files to QR codes"
  homepage "https://github.com/uradical/file2qr"
  url "https://github.com/uRadical/file2qr/releases/download/v1.0.0/file2qr-1.0.0-macos.tar.gz"
  sha256 "a35ccb59df8f98190b403a191c75c3295ef1103ea64945308f5a890530efba31"
  license "GPL-3.0-or-later"
  
  # Remove the Go dependency since we're using a pre-built binary
  # depends_on "go" => :build  

  def install
    # Instead of building from source, just copy the binary to the right location
    bin.install "file2qr"
    man1.install "file2qr.1"
  end

  test do
    assert_match "file2qr #{version}", shell_output("#{bin}/file2qr -v")
  end
end

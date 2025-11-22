class Nextport < Formula
  desc "Simple utility to get an available network port"
  homepage "https://github.com/gangleri/nextport"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/gangleri/nextport/releases/download/1.0.0/nextport.AppleSilicon"
    sha256 "76c586319395077f84c5d36dd2291ca0245b3615ad8f48cf0b70e8c034cf4364"

    def install
      bin.install "nextport.AppleSilicon" => "nextport"
    end
  elsif OS.linux?
    url "https://github.com/gangleri/nextport/releases/download/1.0.0/nextport.Linux"
    sha256 "3a7c50e93c433c6bc942c3e09c4ef860b0c62a7e693c5771ddacef3bdaac0a90"

    def install
      bin.install "nextport.Linux" => "nextport"
    end
  end

  test do
    # Test port allocation returns a valid port number
    port = shell_output("#{bin}/nextport").strip
    assert_match(/^\d+$/, port)
    assert port.to_i > 0
    assert port.to_i <= 65535
  end
end
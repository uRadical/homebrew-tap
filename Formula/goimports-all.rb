class GoimportsAll < Formula
  desc "Run goimports on all Go files in a directory with ./... pattern support"
  homepage "https://github.com/uRadical/goimports-all"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/goimports-all/releases/download/v1.0.0/goimports-all_1.0.0_darwin_arm64.tar.gz"
      sha256 "cf8976ad5ee3b865f204b16a9c86a2bef2c7e648229ec51d9e49a058f329fc48"
    else
      url "https://github.com/uRadical/goimports-all/releases/download/v1.0.0/goimports-all_1.0.0_darwin_amd64.tar.gz"
      sha256 "7f21ec86cd7e6b91d00b3976c3a146d040281936df4fc950603326ac1d4b7803"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/uRadical/goimports-all/releases/download/v1.0.0/goimports-all_1.0.0_linux_arm64.tar.gz"
      sha256 "249bab97bd2b52b97795b8fb891fff93afd47decce8c237f16a0957fda762cb8"
    else
      url "https://github.com/uRadical/goimports-all/releases/download/v1.0.0/goimports-all_1.0.0_linux_amd64.tar.gz"
      sha256 "ce0ccf6b49b1b59f4d17d04100a2e18a69130382ef8801c2ee0bf1dd692d62f1"
    end
  end

  def install
    bin.install "goimports-all"
  end

  test do
    # Create a simple Go file with unformatted imports
    (testpath/"test.go").write <<~GO
      package main

      import "fmt"
      import "os"

      func main() {
        fmt.Println(os.Args)
      }
    GO

    # Run goimports-all and verify it processes the file
    output = shell_output("#{bin}/goimports-all #{testpath}/test.go")
    assert_match "package main", output
  end
end

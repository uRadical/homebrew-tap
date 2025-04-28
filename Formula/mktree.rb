class Mktree < Formula
  desc "Create directory structures from tree-formatted text"
  homepage "https://github.com/uRadical/mktree"
  url "https://github.com/uRadical/mktree/releases/download/v1.0.0/mktree-0.1.0.tar.gz"
  sha256 "7e7dc940206f948c7ceb62c584a066fddb760168dce09047992aca8afe729e96"
  license "GPL-3.0"

  def install
    bin.install "bin/mktree"
  end

  test do
    system "#{bin}/mktree", "--help"
  end
end
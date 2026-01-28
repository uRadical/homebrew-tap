class UradicalCard < Formula
  desc "Generate branded social media cards with custom title and photo"
  homepage "https://github.com/uRadical/uradical-card"

  url "https://github.com/uRadical/uradical-card.git",
      using: :git,
      tag: "v1.0.0",
      revision: "84c8bd09f883478f0ef5c90944974cd305ef5fe6"

  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/uradical-card -h", 0)
  end
end

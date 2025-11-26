class GameUpdater < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for processing Music Bingo game data from Excel files and Google Sheets"
  homepage "https://github.com/uRadical/game-updater"

  url "https://github.com/uRadical/game-updater.git",
      using: :git,
      tag: "v1.0.1",
      revision: "5739765d291ec9f447218118a02711abde05cc22"

  license "Proprietary"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources

    # Now install the actual package
    system libexec/"bin/python", "-m", "pip", "install", "."
  end

  test do
    assert_match "game event data", shell_output("#{bin}/game-updater --help")
  end
end
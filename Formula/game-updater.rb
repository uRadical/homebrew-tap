class GameUpdater < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for processing game data from Excel files"
  homepage "https://github.com/uRadical/game-updater"

  url "https://github.com/uRadical/game-updater.git",
      using: :git,
      tag: "v1.0.0",
      revision: "8219a973d700887d72ef262a8ee202887870a877"

  license "Proprietary"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/42/e8/af028681d493814ca9c2ff8106fc62a4a32e4e0ae14602c2a98fc7b741c8/openpyxl-3.1.2.tar.gz"
    sha256 "a6f5977418eff3b2d5500d54d9db50c8277a368436f4e4f8ddb1be3422870184"
  end

  resource "et-xmlfile" do
    url "https://files.pythonhosted.org/packages/3d/5d/0413a31d184a20c763ad741cc7852a659bf15094c24840c5bdd1754765cd/et_xmlfile-1.1.0.tar.gz"
    sha256 "8eb9e2bc2f8c97e37a2dc85a09ecdcdec9d8a396530a6d5a33b30b9a92da0c5c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Process an Excel file", shell_output("#{bin}/game-updater --help")
  end
end
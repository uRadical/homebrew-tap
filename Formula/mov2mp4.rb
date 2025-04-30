class Mov2mp4 < Formula
  desc "Command-line tool for converting MOV video files to MP4 format"
  homepage "https://github.com/uradical/mov2mp4"
  url "https://github.com/uRadical/mov2mp4/releases/download/v1.0.1/mov2mp4-1.0.1.tar.gz"
  sha256 "8e0caf8ace3277d6ed7a2715de8f970717def1ce2d7f9a9498822a2f501c46d0"
  license "GPL-3.0"
  
  # Specify FFmpeg as a dependency
  depends_on "ffmpeg"
  
  def install
    bin.install "bin/mov2mp4"
  end
  
  test do
    system "#{bin}/mov2mp4", "-h"
  end
end

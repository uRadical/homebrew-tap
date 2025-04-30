class Mov2mp4 < Formula
  desc "Command-line tool for converting MOV video files to MP4 format"
  homepage "https://github.com/uradical/mov2mp4"
  url "https://github.com/uRadical/mov2mp4/releases/download/v1.0.0/mov2mp4-1.0.0.tar.gz"
  sha256 "2e94f04fbfa511e8c1643bf568675876d07ca75eb1a0580e2f0fd5b277992fd8"
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

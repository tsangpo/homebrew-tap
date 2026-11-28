class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.23"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.23/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "a1284b66b1af08e519622a986aad2da829b10c0f8eec82b4100ace2a7d654c2c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.23/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "28914039eec1653f307c4d618cd26a71bce33572595ca89d0c8314f7bb8db507"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.23/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "3db0a285a80cac4e9346127dbd9f75b587229ddab7280105995094ae18f6dca3"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.23/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3ea3c9eb1be371f14d4d0473d6fa331c844d21023c8e562b3b4d4ff92b6fa83d"
    end
  end

  def install
    bin.install "herdr-web"
  end

  service do
    run [opt_bin/"herdr-web", "--host", "127.0.0.1", "--port", "7788"]
    keep_alive true
  end
end

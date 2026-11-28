class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.21"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.21/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "39fdba51ec3357b874dcd819c71e0ed9dbda2075d9ab8cff98a07428f7e2b006"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.21/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "76cf8f84f7ec36f2229ceb2d754ad0026d42c2f0f9de9a6b5dff986392c3e742"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.21/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9ddcb2bef09c8493119ee64d5834f782f3ad3dc61f952fd592163c600c74236b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.21/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0450503b6b223d619e7d81c98ebfb2bb92bfe450b3d1755f588f34353b4895e8"
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

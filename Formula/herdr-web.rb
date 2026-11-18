class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.12"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.12/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "45e71ce1ff31698c12aaf1a53947842dcd08c3e9bfce5be6d3f42c492075241b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.12/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "9a7f388be934c96155274b5745045baf5a6be32fb0927b429f2aed9cad301194"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.12/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ac43214e8c753946ef9f83eb1ffe6995358726702577a2d94f42f80076149f5e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.12/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9f3e5ece6f499cbbb96eb6a52e442223412bed20620d606ae1fcb9a74fc69923"
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

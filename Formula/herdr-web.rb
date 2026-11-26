class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.6"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.6/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "0f0339167e3c3cd6b7fae1205ce50618b1830a89c74830289dd71c3fffae25ab"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.6/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "91b776e5d34b897482a6b3afd11ba0d9eae36fdc1e4ca6ad6ba68be8be2578fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.6/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7f6c1faefa37cf7f847cd3477af8e2acdbdcff023ce273cea1f7c5f5b46d0db5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.6/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8b7b2b00d088459c1c42bf07e707c849ded18ad9eb0e4d9851d6b9a7dcc757d8"
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

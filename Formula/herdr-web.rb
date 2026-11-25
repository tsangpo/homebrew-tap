class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.37"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.37/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "0b1910925732b48c24ca429b0f371ddcef62ca99a0ba317d37049a1f16e734f2"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.37/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "cea691f3c5e9b948443d904a1ccec6f2e2a24097a46527a930220b61a4fc6dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.37/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9a0df37aeba31ac46bc660fcdd59d8c19d751ac48dd9e3c0dd071c7ff2874ba5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.37/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "00975360efdd00e12de92e7d4d4c4f5bbed391277d2f04c6d98b6e8925ad1481"
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

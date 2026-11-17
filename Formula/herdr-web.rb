class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.0"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.0/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "2bc0b4ade5cd610f41809f244c05bfe60668577dc23ed0367dc1d11f9c8288c5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.0/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "eeb400d4048cd11de0e3c7184acbdd204dc92c8c220ca3b4bd95c03e69ec6e5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.0/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "27dfb7ef169a34c7f69e36d27a66bfc21f55a3afcc7c84d01ef49e773f1de07e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.0/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "56c61b3cab08d91e2e69da9601e41e335eb03be8cdbf356cd281d3f4c61c24a3"
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

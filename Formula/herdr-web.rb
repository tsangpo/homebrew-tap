class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.20"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.20/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "ca1759832e0423be3b65680835abd97a40cd0d3fe00c6e4e9617bcfdaa217584"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.20/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "b3fdcb32c2241822bf6918c229990aa1fdff8c91a68b47d0d790061b328fe708"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.20/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9efdadb010bff60e4a895d2353643d2d81954876c396b8d26fd66563b3d98a80"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.20/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "116ca20dc3929a1c8b8f4f5a59d99052a1874bf94a3b05fec9c50e253bd7358c"
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

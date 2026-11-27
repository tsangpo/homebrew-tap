class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.11"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.11/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "17b8e4c428f2bf479565045c3083d742672ec06d78bfdff45c1e0a5e7ba3bf66"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.11/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "35a6f28fae6408e59d8039454499f543fae617842241155acff9277539c10141"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.11/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2e35c7955e195104be662bedf7d62d3cf7fc7dcc06ce6ca9ce07d594fec275f1"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.11/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d8370df5b3856c76b30a3227f6f296d5f627b4f0517860e8bf0bed9168411346"
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

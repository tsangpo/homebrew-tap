class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.14"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.14/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "1727e97bcfae6eaa5dc4dbf2b36edca84045d8bde493fb2b0f8ad936c29f6a1b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.14/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "5e2d37c20b23a1fe3b8f3dc3ae1ed1b76a9ade28789d0ab3cd62ce532b1e6885"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.14/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d2a31256022204d47b3ac68c084e56f04877948d600661699cc795307ee1afe5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.14/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8469a93289f0d1bed3b932118e144924de9649f21c5c8b4e09a984f641c4b996"
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

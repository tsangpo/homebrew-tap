class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.1"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.1/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "a182aa1919066dc39df0869a92d792e3c9892a49184cdb70f842d9cd9b1ed0cb"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.1/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "76d98b0cf0578552f6ac174e70a32d322ae1a50244e3cfdfbbb86f47db159e5e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.1/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2c7f8bdf0bba1f22b477cf25fa0774f4252b9b011016b50f6f535b0c41c42b22"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.1/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0439b64b38c04fc820d019a8370b741d4e4328ac14d7330fbaeb697071520f4b"
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

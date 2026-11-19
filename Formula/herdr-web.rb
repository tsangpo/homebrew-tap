class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.23"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.23/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "ca0abfc879f2ff1f82ccfb089b2613860c46e8623aec162d9d259e6d18a8fcf3"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.23/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "cc14da9800a63fe507a9632e59cdd4cbd5197dcfc1c369a2c0fad322abc065e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.23/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4e4a2fb9a7855c0e278f46deab4e5437f6548b544f3c1cd6deff8adf03365852"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.23/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0153db3968893be8462aa885adb05d3d58533435b5bfc0b7061eb58f659a27e2"
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

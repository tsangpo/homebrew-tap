class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.17"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.17/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "e404a3d099f5a4afdded415c8aa810696050e4d41aadee39d5c27eafcddfa2db"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.17/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "f22f10d6bd65cc5a392bfc02c9a62dd644ab59a45af09694ebfb3f5d2bb8e56a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.17/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "0dae6a8eea59d2568087ba619960f419400746d907fe44772501385cdf496846"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.17/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d4aa0dfe9790a690d854995ca5dcf685c35c02f7a2827c825a9fcb84495922d9"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.34"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.34/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "0b0b3d232c596b5a7fbaf06197d85f5cc05c627816f16c757c259637a08258ad"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.34/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "ed45afdba7256633821d8a6b5df0ea89aaf75bcfe9202c3cc86c766cf8e7324f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.34/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9c949428a6b076b81685e1d13a92e24cea36ae66e0f724d080d9cf6733deed14"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.34/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "93acc40ee09b996a7abf7f30e97cc279c906679466900eac476f748c4b6cec80"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.32"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.32/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "3b678f3b1a12e41913f274b23f1cced0d34e2d6b284fcc1b4abe96b8801e46f0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.32/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "a0cc6d507138d31d4af62ec736972d282b7836fac774d1898a97b9acfd9610ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.32/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c766a1a52a907fc816c594d39de073775ab1fb6d333e38603391897f3194fecc"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.32/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "786efe9887b7c1cb6a55771c4cd6b395dea1c4b16905c1eebea00230220651a4"
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

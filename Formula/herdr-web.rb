class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.5"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.5/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "9eb362c8dcae43f3ee7938c71e31df38c744df9815576d1097014c1e3ebe76a9"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.5/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "c5406b03500a46233eef941b200c6afa92dbacc46af00bf08b8ddf2bb3851d61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.5/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "75e84ffaa2000cc4d2034524a75602827ae755ece1d9008059a4edeefb62ba43"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.5/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "4d2e60278408954a4040d2c36651b8edc339fcf80eb0b2ca559602e755fce33a"
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

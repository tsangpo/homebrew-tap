class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.30"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "fc6420d87059a5b4b8ccc0d2fefcbff4cb86dc53cf135bb29b71432ab4e17316"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "1f560cbbaa51be3afc81f4e5c16356287116604275cf509b2a5f52bbeb764627"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "84c6b4cf5f85cb51fa845bc90ba6b824c3b0f1e206e487705a3221e361f39d07"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ded0982dbf028df7ba9b987acfbc13732bb2919a4282fdeb5afeb556d846be4c"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.27"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.27/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "867829b721eae5eac5153e7e9e6fe9aa9054c11b97028ce9db1af12156a390b0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.27/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "b64646f3fd4ed3a291d421d2b96694ec736a32dbeb0c36669997c1243c708d8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.27/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "40dc90bcb4ff582d6647574aa8098b28103a753151ecced756e541de3cec887e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.27/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "1c69a950a9ff61893f9c8af5e7bfb2ce11d29f901206442a8045fb469aff29dc"
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

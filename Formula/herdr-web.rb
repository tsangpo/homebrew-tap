class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.3"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.3/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "9f85467c45dc1439ec65ae7d931a2d534da54e1e149eeb5ba85371c380642c69"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.3/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7aafae8d5751401ac59203c671a1dbcaa63b4f9d6f8ed65379609459600f0616"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.3/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6524c07a94fd257b9fe804ce06775ea8805bcf1b806c08ef99955a08789df30f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.3/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b3b02f4ec3dba524b20d58e00ee13d5dac36d90fb53fcda00e72df638d0494f3"
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

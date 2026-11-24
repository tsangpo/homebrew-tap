class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.35"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.35/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "c5130d00501811351ec6c3da270a6c117555ac26ecf1474dac42a28172104ca0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.35/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "377e7ea299c8d48fa77976295e5b73593c62b461fcd97af49f8e7615727044ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.35/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f4c71db9489434f7946009e3d8f5ad2ec673d2496d82bbc09d6357ed63c32c78"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.35/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a5d5ec7ff4b3ca69b158caa8bf4fcf784c191a67e7506078093548d89166d135"
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

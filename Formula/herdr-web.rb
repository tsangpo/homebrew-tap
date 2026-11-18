class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.14"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.14/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "376b3441674e5664bcc844ed3a6295dced88fb72f0e94577fe318ada88784a0b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.14/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "c12ed07c94a697f58fcc5b61167067c3a9fb542f654dbdc8fe19d04cbd81e7ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.14/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6389088bfd1842ac2c75685b2dd817055ed7de89bea3c23fb99b5cd5f1f6fb7b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.14/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "133fc66e7eebc2d42dca4f65ad27f145d668612e052e84d01ab6ecf4a2b5b69b"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.22"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.22/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "1c0d33fa753218029fc8ffea387b0a66ca5c2d13f34cc769e25da185fc48f085"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.22/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "3b8a67c994acf595c1a01ac5066a792d508bbb6795126eb9cb8c91e4a6e80c6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.22/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "5d8e7e9496a1bd8d8d2951bc96974d294c2071645ac867ade062cef50820e032"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.22/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9ad7e31ccbb547ce87cce90723e85dadd53e58c0d1ecd0f2f7e2d27a089730d2"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.2"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.2/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "2af781f18a64524f543f67c8a6f83231cfdc1a22569969d6f3ae3be60168c267"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.2/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "e4c2cea49a8c3a16f16cdbc96361e2b10a42364c1982d01a1a69d950085f21a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.2/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ca855b42732332e06955a6bb5f5a193444b6cc02ad01d26334923368f8b2a9d0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.2/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "33f46c265505fa2c8c5c0994ee12174cd7a2ee15f4c82f8a5f84e29f16a85ebb"
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

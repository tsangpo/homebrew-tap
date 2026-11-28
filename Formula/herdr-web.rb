class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.19"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.19/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "58b54eca3bfb3397bac6daaa72e1d7aff34ec4ad9bfe0580e1f1d9017bfeac7a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.19/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7538e7cf9de3844d6df732922cf1080fc1305fd030915df0d0897a15aeef5b52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.19/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2c3cebf2b25c300a228e51d67e34f6682804af098d2d6304ae5e68d89dbd7d1c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.19/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "55966192a2fd9d569004265a79060560f006adb06e3567aea164afb360f8f4dc"
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

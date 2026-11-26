class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.8"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.8/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "8ba399d09084ef4efa714fd4dd774725eb4e7e0dfc70716664e61e9af788aa9c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.8/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "1bfb3064f5703e5c02f545620a991825fd0c61980a2636cf7949acf116f341f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.8/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c30e9df2cfc38e4edb126882004806991ed5984360211e283e9051ceffbec1b0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.8/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "77639b5207dd324ffb08b85ea3e29532034c72fd592af33cf5115f3befff624e"
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

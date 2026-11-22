class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.30"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "9ee9655cc6686a973ddcb440514867a2f4684b1480df2feed89892182f0f1ab2"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "4c45b55b9b5e1089d22dec47ca258bf20c937783f237ffd1de227a6202b00da6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7bafba5271585ab637be21ce7292a126ccaca28c2bf8030c022555d8699cf644"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.30/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0b83044e685b16430534d86033a7879d3592404d9f0a4803e2112ed5c55818dd"
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

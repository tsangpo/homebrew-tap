class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.25"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.25/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "b450223fa16cceb1782fa1b55e581a2e55d7d55091036d5c8d205fe00352b1b8"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.25/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "07dfad4957446bbeb5759e09f62a933d5cf15ba3a74ae4297b3b2cd6343ebb65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.25/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7c9a77c40533e71735dbfee9f18e48cba5cd3e8f4d48a0803396e7d252a92a2b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.25/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "34961ca810dd83d0e0357d6539d2d6ed0b2b3ed4e5292ddfd68a79e170de573e"
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

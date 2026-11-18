class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.13"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.13/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "ccdfbf5f37f799b30c730ffaac3a8086027c7c1383fa6f9d1722758063bb5e7f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.13/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "bde0aa5e958b17ac434635c5d7fb360940af6aba6b26bf81c70ce0263da5a332"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.13/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "cba0c9248841c8fabb143b899284e1c8f908917c5663410f2acc89a345a670e9"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.13/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f02c67a64b11879aed96d3b35f228609ea6daf4f1e4bd1bd9810322deddbf2b0"
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

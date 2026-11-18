class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.18"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.18/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "9ea08fbb7683bba095134ca667f5f1e73fcae15b0c568ec9707be4163f61bd73"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.18/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "cffac6088a2df91565a06afdebdcd77ea4d124c9dabe3d843414faff3cf04c36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.18/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "26007266f39926cd68e17408034865a37f2eaec14fea120e3fb144004fb451da"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.18/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "70d50c40984a11e4a46bfc333a595a420545f787b28669260295839bca2475ea"
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

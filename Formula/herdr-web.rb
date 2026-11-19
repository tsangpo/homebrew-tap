class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.19"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.19/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "cbf4934de7bdf80537285e4184f63a26bdf37c033fae04b46ec4bc629d7b2abc"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.19/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "d610cab5a16ef3a9aebd2764722facc66e35797ded18fbec1f805d6e8dc5cc0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.19/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "96151b3772212557ec898cf58c4fdef6f83478bae9a48f0cc228cf168123d9cb"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.19/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "33fb79eee50794a653892b922b2013daff8bc8656f7bdb7d61dbc6bb9e588d45"
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

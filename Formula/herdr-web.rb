class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.8"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.8/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "666e216cad01a496e978860083311b48a7a9d025e8d9d70702ba362a677fc1b2"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.8/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7d4f336afa5134ebabbed12b6c36f2752ad02ffa5732593e1d1a96a9ddbe22ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.8/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c60d18bc5beed617f4b9d33e807bdd971cfee1d5cbdf81ee6ef2ddb96b64c68c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.8/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "27e55991b5ce2d11beb1ee53f66b4a3e6c3f7fe77629757771f05da4a1eb2f7a"
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

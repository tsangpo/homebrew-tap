class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.17"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.17/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "d3646a6f5de41a4e149f6e11ce8d645fb9a25153a30b0e8b2290c01e04ce64ad"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.17/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "d13a7bd94e6ebcd7dac5740ac7f6b6c08f5c2133980424487f829149f8e20036"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.17/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b9ef64d45facf1523cb6b1f6b854089c094516d2c8af4032f124e4260f61a684"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.17/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2c656a3208f6c05635fc543e0020c83d666fca2ffca52bcad1618b62a45df557"
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

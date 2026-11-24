class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.33"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.33/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "608eb44ab2ff54582a94ebe1d2dd2c52d628d08cc53c1ea76a294630b921d3e8"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.33/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "92f37dcb4c16ff0c52558a1192558eeda17bbbf6c36562b996c8b8ca217fd8d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.33/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "aa4385d5f3c8103ba66b39c4e10cc7286fde56cfe97910b4e6fba5a80769ca3c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.33/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "1637a6cb5122cd746b9814db17321b01f9936aa4f4ef4cbc540d4c54547c5930"
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

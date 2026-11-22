class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.31"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.31/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "73eb6add0ced88963b7c307c84561fe91f43f3630ab4399ff28533222298762f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.31/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7b432642be367aaa3fccea135f637e953ac40bc8d5b7b73e3f956df485ebbcac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.31/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "37e97fadce85c6e7d1d4ee66b58a95b94213673771a5b159ad7c3b9e89ae7689"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.31/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9b5d3a008342fcc275a9aa7cfff8fe50f8cea5fceb44b5b671c70c592ac458b2"
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

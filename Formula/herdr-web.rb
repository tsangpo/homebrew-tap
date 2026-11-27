class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.10"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.10/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "ccb9dc022b49f7d56e6940d4d6de4dd96b4a31e472bd87063f6eb943cdc3161d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.10/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "8e1ef4461ae61678f6f62342ed8c10a9146e480ef553bf516dec73aa8300c29d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.10/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "81776b40c51fe2d0b80c77d0fa3eb2585756879788eec3a4b70d411709f87eca"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.10/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "6362ffa81591830ce80e6f47da8fde977a0ba1264c765ac31373596d870e84ff"
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

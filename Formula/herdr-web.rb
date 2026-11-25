class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.0/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "6b4627db626ba1fbfc6223667da2b199b87625bd2f923c91229463f92cbf77f1"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.0/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "2d32f453efabbacf766d7df42b5a5ffa7279161a9a02f0ece286a6e50ce70b5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.0/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b20dba49d22a62312493304defdeb51f2a48c2910949de38e07d501096063db3"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.0/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b83d325f09106351335c09f656302ff0df0d1300aaf2208fb965abaa6c9722c1"
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

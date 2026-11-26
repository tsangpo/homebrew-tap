class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.5"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.5/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "84f39a1cbc71513eacf53f290643ed59c90b66ec3683b79fffcdbb1fae7ca781"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.5/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "e6283223dbdb35e06d55aaf6b4258e68a0700c9bcc2e25970cc7692ce757ff02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.5/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "695c1f3e7ad59f51b063289311e1f8c2153039dc5f8aa3885d52907084b6e24d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.5/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f3b5fb7967728915d5c3121c46cc5f394bbecc431b83e453921589b23420e38a"
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

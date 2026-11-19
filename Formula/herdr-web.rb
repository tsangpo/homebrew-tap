class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.24"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.24/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "5a039bb85c187d34010a67f63e6e8a1c46aa484c633e1bd41f7bcea4d5401841"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.24/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "5692c0cf454bb9ef9f2612dfb5c7b48f5a6362fb145f67337f9984ed65217065"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.24/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f9aab17349fde4aa9d6bfc6d365e4925b7b2d52e07ad6c99a796b324b093b6fa"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.24/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fda9c15a661fb030e427315f21ae411d8b052c14ba97c90081a702f443130e97"
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

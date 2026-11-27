class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.18"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.18/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "2a793cd7beec6a643c7a29581dcfa67194d6abb54551910b8829c35dfb2087d2"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.18/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "17efe2379ab43f7ea97ce3134d9614395d84e2d7bf596c70f843dacecf97174f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.18/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "27aa720be8f06e7e7ff971da1ad32c741f79b466310c474b7bbf20f9a72a7c6a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.18/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f7a3de652165cbb26b03424a799c35d5bc5451dcc1f83b0591d314e3373d1fa6"
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

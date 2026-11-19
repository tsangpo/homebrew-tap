class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.20"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.20/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "45176c9b6ce0560c7220adaa9bf131b919f967469e6dcf572bc1aa12c0d9be40"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.20/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "3bfc9c7def37bb7707953c063aacba569f78f2b879181d5ea4d69d71c8402bff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.20/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b9ff8207c91d4444e98012391f23f90a9e2de110fe767f07036ad0792f2551a7"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.20/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "037f868ea5ec5b18832b39d8c9106c334b9cef1d599f0ef9ac1e6585b645948a"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.28"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.28/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "e2e8059d6c604c417cde0a8ccc08a9069210b353b98ad246d75e675ab17bbcbb"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.28/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "24eeaefc5f878698dae76cddcdf4ee5af16129d8339f24e9fd199398f207577e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.28/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "835de851fcb30d070780e9e87911f090097e657802289d847f06015e68b2a34e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.28/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0379891c13b00c81329b11f71773a793c127975d74c063f237e94134073d4556"
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

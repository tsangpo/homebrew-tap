class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.3"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.3/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "d231eb73c4889f824fd0ccb5de793fe46d2d47ffdfb57bb752ddb3410fd8c9b9"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.3/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "06b0abe88503b03dc935e763bb0c9cca07cc0751fed2ec881cc6b872cf1fbb00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.3/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ffbbf0d62e0a2f0952131075964c05df56c2a9aaac2db8661481c2f5decbd740"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.3/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3ffa07f7cfde03e5852395444b80b04913ed4fd89a3738ffffc2395c7113b5a5"
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

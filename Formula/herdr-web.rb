class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.4"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.4/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "ea0ae809a141e7f3b6816e8b81935f84c281d6ceef6441ca02d84394853451ce"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.4/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "af3d7cb3c69eca2cc985cf6dd67e53bb1dbe780eafe79308f63d0afad9375076"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.4/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c12b64f60fbd22af96744961ef74d7c51890aaa1dc746057675e2c7f93a85a37"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.4/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f89d055c709ac9db8e1c900729ee16d0ffde41d587082faeb2396f118d99d3e1"
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

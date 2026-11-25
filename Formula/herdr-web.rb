class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.38"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.38/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "6def25327d89774daa13055f935e86645b6a4e9652f5111752aabcd7c1394f42"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.38/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "3964068e453f0abf47ef4a39727ba8f1a9d3dff9f30e4a8488de572b42689099"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.38/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "012b9488f1e5d36afc5353b5a65e659477a0963e9a700a889d3f74da8920a2c4"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.38/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e84c6ef2e9509c2a519c2face3f3abc751730b83d21567de7f7dc32c1cd50b86"
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

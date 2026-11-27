class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.13"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.13/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "3095e21adc7297fe46dc8326c0e4fddeee2e1efd27a97b8aff67f8e509f1dbec"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.13/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "a367af58503663c42807acd66358a703b3b70e778a287a340eef4386f13a5de1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.13/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "53fbe3f91b842676abb0dc842257f55e36630c124a2a3030edd8c1b8c992cfa4"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.13/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "bbcbd2d00fb523d52684c37a0d9778c0307d0d9477ec7794fdcd714193259d03"
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

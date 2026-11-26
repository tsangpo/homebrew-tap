class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.1"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.1/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "91f191c9c5d18bceb091faff0cb5a11f2d2a98ab20f871b3e3fb28eac9e46e43"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.1/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7d1aee4bae0f7c1e07729dc9a65f85c9018deb3da90e9d389a894381d867f483"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.1/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "bcddd2cbf700a09f51843b2d6cf992ef4b0f254a9bebc4ff7872395bda0107fd"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.1/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f6823b5128ec830593dda1c4247fd1e3eb0b19afa9f69a069dbc4679b455a350"
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

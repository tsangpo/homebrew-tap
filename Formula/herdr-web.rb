class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.9"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.9/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "af664b7bb0f302100fb322bd1332c388b7189af09c3e8df2d3d793576c4dd947"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.9/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "a3c05f6255d86a2ef5539cecf188f020426b78f6b301ef8213163b29def299fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.9/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "69dee21faa622b56a0bd125ef9e1976dbb19d7b687edeb9882fe9a1e83f1d011"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.9/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c2f39baece6d6009af09f67c0da2ab596c92cd6cd49bb9e6f846aa8588bc6c7b"
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

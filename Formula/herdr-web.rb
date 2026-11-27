class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.16"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.16/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "3a59d2c025fd9355e12b1de03069ee2d1e78b539692b415a61107ac773da9913"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.16/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "6c3bde9ce0e4f42830d8ae9c51544f4bb0a0e84e8bc42a216760c4fb3077868b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.16/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f20a789e5ea3d1a5789d866db2fd4bbc5395d87503e43a7decade9a66d6b015f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.16/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "36c58154804657cc0ee7d2ce5932191fcc7ab20256658167ffdce116400506db"
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

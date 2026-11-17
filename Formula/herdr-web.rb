class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.6"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.6/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "0102871abe42a7f12a66934e5624b270c433fca9a39048b62045a3500b001a6d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.6/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "e8357982180d2eb1a4a736dbe1c9d47ba36c633d509f990ebeebaf4bd30ab91b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.6/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "40ee213182ca14a7374b9b8c56be4371ca36f3e159e0b8817e981b7f9656180d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.6/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f9862d4e71ebc4b31be9dd629b25738844a13a384d9f7567102253e5b0689404"
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

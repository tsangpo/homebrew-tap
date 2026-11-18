class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.15"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.15/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "beef509cc01a8238cfbd818c9a172c258c09719fa35dd20d6bd5d89f33de203b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.15/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "d4e5fa29afdaa79be737e85ffe2564d3ae928a1b4daad5f05e307de02d7f3b45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.15/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f272b7451c86b2f3684c8da29c7e0de2fe30423b431c88282b85245b9736265d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.15/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "83c71f40d4e73ca3ca827d74ac0bdbcbd94b2b54870c818e7d202dac0eaa61e0"
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

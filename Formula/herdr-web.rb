class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.29"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.29/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "f6d7a045b1f5b7e9010d908c1e1ba9e9f22d6ee58491ae0df16fbeaf7490252b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.29/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "48633ff6f72d826a7098e195bd972645a639f4909bf90b73d8ac4db3e07cd174"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.29/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "5ff90cfd6ffc28c543300c49941bf055ab1f93059d5809a23c8a230b0183f147"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.29/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f16f40078aeed7e3e858a4c61b4b6d59716e2c997abbe7992a8f97fa02890e83"
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

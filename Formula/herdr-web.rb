class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.4"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.4/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "523b9d808ef45ce2628ae97e8526f95f06bf6dd38cbb6b9fb562f8a3a17fd5de"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.4/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "2faec33df7208395a1837df8062fa124f1746ecfaa712eee397c15913780fca6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.4/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a5ae3e7670354b803fc7b38678fa0442555d74576f297d86a60b1e3076acb73f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.4/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a6f5e56eabac355f1a58b73dfd2fe0a8b3fa017c57bc9f0b3ec92891d5274f52"
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

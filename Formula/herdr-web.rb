class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.7"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.7/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "b2ec70d974473a0ffaa0c9dedc9ef7ebd5250e95e497aaa3c9197799c6c93a48"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.7/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "7133bd9c453348013222a7abde96a05ab57e27b1f853dc52df461cf70c0063be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.7/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f0fc8f5dc066c4a3aae6b70fd3b92d24904e5e5c13b3bccf06e18d908717b63b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.7/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ad84ba58667124c1868bfb3f6da529b36b6ef149e85b6da25ca1000a41309d34"
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

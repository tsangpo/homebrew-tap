class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.22"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.22/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "fef8f2aa63c7b3cca1097cff14812ac25903e045f670b4b1538d2d802c86f06f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.22/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "c2f40e4de8ade47e6820f9aa8a5391cd67a68e78b0ff8d9e654e17e2f8991d09"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.22/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e90d46f13b7f141485f69be6a44fc25b2fe46342d41b0e8df28c244478ba6cd6"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.22/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8ec2b100498977b44e0b5b0ddec8fa27a02220859df37b56aec65582ff655dd4"
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

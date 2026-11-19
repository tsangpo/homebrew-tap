class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.21"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.21/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "d0124600eac3260ccd14047071fa117908085122b6c2ee8fc4b1eb703ae4487e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.21/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "45018691c897594c0618df94e6ce8b865626f9c5ddc7fcf33c2409b0ec666ffa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.21/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d58adf887256837882f714bd5c33b10e19bcc5a4ce8f236b6e059498a447d33d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.21/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "66dcd8cda03bf9f80947d742fa680c7f8054289ea92573aa54dc953669e6956f"
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

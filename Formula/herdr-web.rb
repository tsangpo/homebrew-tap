class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.11"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.11/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "6fdc4c78247ac2758ae4edd921a1f63b93a178c3036cdbd802fb09de019e7a49"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.11/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "202fc5e5cc444e0578fe5afaa67852f6bc85664061d57b574c63ac08878f0255"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.11/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9169ead6c53734ccf08a08d0c6f1b73426b3b4557158d6a7de658e0728c816a9"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.11/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7a10ce7b6e21436c2e78491b1fa46481ad41c17f245cae901b1e17448d87d940"
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

class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.36"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.36/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "a90e3ce03e6f11af044dab3f28e0a701fca38133d21819a28953ea0301f4d65e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.36/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "1f8b7383f8020042cd73d8e0af2ba27d0592e6d8a49f04d072b6fa2fc8a0d720"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.36/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "1701b8ac9543efe79173876ca65d793e677c80d2579518289729412a1641735f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.36/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "1eb049d41e515d1902cf46008a6d31e1be3a2e230d57c8dc5c426117fdfde055"
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

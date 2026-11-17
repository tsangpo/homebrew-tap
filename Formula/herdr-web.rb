class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.2"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.2/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "edf7ce492922e2f2d75eb58c0224338912df8a77cc0bfb0bec868d3938f782c9"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.2/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "04e0019bc6a02a9be07ac213c00873c862f0739bccb90ae812e2a27d42a7a118"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.2/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4da24dd2e561b35ab4e78bfb774696bf3a8faa04417003a9fcadcd2a4f0d5a7e"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.2/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "284e51d63ba296d7e915431dca1a5bdd0069305ecc4b8a5ec97bbb68a7c733af"
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

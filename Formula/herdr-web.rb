class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.16"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.16/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "37c81b7dad64740aae6f07631388b4427c21fb7ae354027a9f04e03ba58889d6"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.16/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "b297e03b3c2e6a6ee61d92b7b9d3888fd652ae05f935b7c19d09a1eddb5cd73d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.16/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "47eb1ba3b04f005e23882ee8157b90035ee778fdff3a4732eb6402cde6bff3c7"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.16/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "515d79394a5bddb8a27878b379c416f68a84c261780188172e220428080e667b"
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

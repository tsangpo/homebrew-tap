class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.26"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.26/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "e3891a3d831495704646d980bc09708b733426de3eb15daeb153de43c96df661"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.26/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "04b8d45101167397008858fdf9f3d149d9528d1e6d1f222e816188511a4e505f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.26/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "46a6e380969b499d8f2a9f7fc06f3228415009cbde7c9b597c95f90fb437ba9d"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.26/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3420a0718c9646ccaf593e017c525103de5aedb5f32a9334911d1d3f9f3858d5"
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

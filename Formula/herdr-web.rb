class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.10"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.10/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "76adf3b6b98ac3e791338fa786c96bbb01ca089f33a0b85acce2559f7d02e2ef"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.10/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "a73f57a42b6f27272888cbe3c9f1dcaf24ce4460d96e9b9e2d50e0ce244113f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.10/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "408f0605b6c692a161eb5b7e2d864fcbc7514921d538e2860c379e65644ea7ff"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.10/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8aa56dc1bf90c6eed6be4f68c7c78d4cc1a7f2b953fd6e40256402324f8cf613"
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

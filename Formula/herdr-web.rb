class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.12"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.12/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "3976fb6ebc36e1474d2eb4a9ac4fc2e97ad696b8883b91d9dc169f6a5874d8cb"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.12/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "31e6fb8c8d085e0bbbb724422f1a84f51185e73e8b5da2594797bfab00384124"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.12/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "079cb17a8a225da180ab358dd7b2cef33c7f46ae4c24fdb6bde8ae117dae6ec0"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.12/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7dba53d6b4e451aeaa184445766075a0195b6d4ac04c99a51d6d45842a63916d"
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

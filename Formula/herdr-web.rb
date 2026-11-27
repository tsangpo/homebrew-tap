class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.15"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.15/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "f0b5f4e4c8693872173367733bcb5de22e5bb1b3755f840b58b63dbfca55d442"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.15/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "04e8703930724fa1b7d450af81a908e7c0906098aef4fbd641fbd6f2e27f45e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.15/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "07b0b070b850be3c1c7da6a3bd22cb84dda5ddd7c877d83188e88cdef0411f5f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.15/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "20966e1164fd622d036e9b6ad8ff85a824b788aa5a7b345e6c0a82cf0d0da5a8"
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

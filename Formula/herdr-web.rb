class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.2.7"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.7/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "fe9906d740e74d8e950adc01ff85b3cb2df5a2a87ebae70aecd0c146296cf3e6"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.7/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "e292039b958512ce760264def8e70133735c1d8d2948f1fbbea4c0957a67fceb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.7/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "370c7b4ffe1128474698a98236a29adabedc5335961e543d57a2c9579b9e82ce"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.2.7/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b4d21c299b93a4e63d0b7e75d66d599c690c430b9c45f874a32436bbc7d3e52f"
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

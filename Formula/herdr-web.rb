class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.39"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.39/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "764b9859f73d80977dde90b155dd721ec45d25875f1fc04f1a68c53ac1fdeb2b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.39/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "f850bf1f83d1b00fa541b3e66a2078f3dc72fb128fd0e5105aab0f8a54bcc258"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.39/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d8243d528cf5c4d9e37b3b0c94e060c69d1c62892fe038308ac87dad23dfa1e8"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.39/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a1df8b80bc8b540beb06dfba6fabf2b05d2e6e987684f703ebcf1594ded4ebcd"
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

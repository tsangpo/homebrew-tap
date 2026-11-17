class GitWeb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/git-web"
  version "0.3.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.0/git-web-aarch64-apple-darwin.tar.xz"
      sha256 "c4918a116abdba382cd6ef0b386035d3708169c7d32b9dec431debe1ea47e12f"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.0/git-web-x86_64-apple-darwin.tar.xz"
      sha256 "339b5d081172feb6fbbbe53f088b9dadc6e0b138d9e6bcd171322ef3a659fc6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.0/git-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2d634ce8a0bde7686b13c7e2b329657b770f1ae03277325567f0cc686d3e5a84"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.0/git-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cbd42f411df9a09c175c249ccf93528c31ba95c0be1e90590b252de5d8e58fb9"
    end
  end

  def install
    bin.install "git-web"
  end
end

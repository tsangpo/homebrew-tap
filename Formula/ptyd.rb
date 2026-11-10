class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.7.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "59106dd9aebdaeaa92373ce8f19f520044646bef0b6ae7d3a06bf87909ac9b65"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "03d51fc0dfa059d558135b940144e7450417ead6f3818ae75723b2f405086fe6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "76931c0639562338788bd01a82e37efd345f8752946933ed3b9aadc3ffdc51b6"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b56f2cc2eb90010e0a84987913c8ed878204a748657d7c332ce9c63f64c05514"
    end
  end

  def install
    bin.install "ptyd"
  end
end

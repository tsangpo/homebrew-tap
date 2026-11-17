class GitWeb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/git-web"
  version "0.4.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.0/git-web-aarch64-apple-darwin.tar.xz"
      sha256 "87f88df7c185527f4737caabdac87d58f86506f4159592237f5f574e877e880b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.0/git-web-x86_64-apple-darwin.tar.xz"
      sha256 "3e8a32827c1e96293b99d3cc9373b20f2a90628cbf7fbc928a298ac5ce8825c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.0/git-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "de835eeb512013256a4bda2d059e2e8ddedcaba4853095e3160200bf07b1d9ec"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.0/git-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f851653000dabe0d1ccc13b4656a0f9479ffa355ea389be8dbc1acde8b488445"
    end
  end

  def install
    bin.install "git-web"
  end
end

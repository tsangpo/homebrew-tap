class GitWeb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/git-web"
  version "0.4.2"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.2/git-web-aarch64-apple-darwin.tar.xz"
      sha256 "c0b9a1ee1116edaf6f3716cc6194b252e8e30a1abb4c14d093b613c9f6e70933"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.2/git-web-x86_64-apple-darwin.tar.xz"
      sha256 "e7d78028f3815db88bd276a9c6ff3cf712ada5132bdd9c0e3b5387c99b95ef15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.2/git-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e76c7c7b0805a3ab2ebbd04e63bd2c812135f864d1cdcc46c9548d80c4e9964c"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.2/git-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fe5c03dd7254d4b6a514241c7e3e18480a159f47de12fd7ff49c4945ea9a2773"
    end
  end

  def install
    bin.install "git-web"
  end
end

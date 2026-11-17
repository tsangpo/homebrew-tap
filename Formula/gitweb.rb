class Gitweb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/gitweb"
  version "0.2.1"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.1/gitweb-aarch64-apple-darwin.tar.xz"
      sha256 "3056455e67d9d9830341739e81520f44ed8fa965dd98efeb6e4ca64da478ceba"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.1/gitweb-x86_64-apple-darwin.tar.xz"
      sha256 "4e593a4f74acae543c1569a0c254a61cc8420009df3f37e457c603fba13772cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.1/gitweb-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "cae008b51fcf3d544bf14c569d5754187be355bf8a9808fbcfba74a72869f689"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.1/gitweb-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7fe4d1263f6b83dc2b06357029ee2b5dd1cd74644df157e96ad044617d3c3f5a"
    end
  end

  def install
    bin.install "gitweb"
  end
end

class GitWeb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/git-web"
  version "0.3.1"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.1/git-web-aarch64-apple-darwin.tar.xz"
      sha256 "ea16b3c3a8a0004f1ef71fe4d3be3d2aa2b3c892c2a71ec291f40fab717d1152"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.1/git-web-x86_64-apple-darwin.tar.xz"
      sha256 "c0cd7779ef271c578bb0288d9cb96e7f10ddcf255bfab66109e7627615d51cca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.1/git-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e37510ad49dde281ed05f226ec4cc8c4795a1f32a858307ba62107d736efe017"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.3.1/git-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ee2f138b351b9c1a94a09527f67003501a260c3170d42c6084337d1fdae7490e"
    end
  end

  def install
    bin.install "git-web"
  end
end

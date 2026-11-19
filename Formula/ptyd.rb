class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.7.1"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.1/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "abbb03dca598f082c83590e0f856558b94fce2e9440c7ea08e74594e54599ef5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.1/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "e278cd6d3edf04097600d421d4539240806926e5aaa3ee72ad4c58cfad610bc0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.1/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f327e97972fb50503763e2ebfce7ae674ddf9b1e53d90b86bdf8ba34e1d14344"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.7.1/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "756d2d68ab549d5832f75bfb088b4596772764d269542a6a24d8bd043f469d6e"
    end
  end

  def install
    bin.install "ptyd"
  end
end

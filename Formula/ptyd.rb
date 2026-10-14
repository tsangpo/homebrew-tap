class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.2.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.2.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "eb4b27005faac3689d864ec25ffdd2188c61fa7b766aba93c57106454bb45cf5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.2.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "e282c4c0cbeb82118512921a73d8e9825bccfffd7b6d716aeb284f1ecd02531a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.2.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "65a008b9f47c9445a739c17206cae1558412b9f69f49d3c3f044515b0a1e26f5"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.2.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d03a95bb0a7fd956d554ee2b16788fe261560a9f6eeb6ef6471ac372c9f664be"
    end
  end

  def install
    bin.install "ptyd"
  end
end

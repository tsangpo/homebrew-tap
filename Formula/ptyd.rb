class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.4.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.4.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "e65c400db5e2accea415b1163e35c52067d1663a268a1faa69866412796aa134"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.4.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "120a25accf9bbc264fb7b8ee5bfb1f53f790b8f768952b690221ec7ab41b4d7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.4.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "08fa427d7f7e37dc1c169223fbb577418b89b709c06fe5375a959bcfc6d31108"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.4.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "956cd5f43d43f3ab2c1ccbc3990de3ce29cd7960255c586dbce72d5328574c1b"
    end
  end

  def install
    bin.install "ptyd"
  end
end

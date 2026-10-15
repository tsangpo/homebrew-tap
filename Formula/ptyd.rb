class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.3.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.3.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "539fbbf89fa02cdf77a17b0ead91db5845604c1cf5b64ac45298e31c44154e6a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.3.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "cb97c3f583675b59601e07b697115ba08d57c0622ead77bbc29e2e1095cfebd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.3.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "551c908d04094f9fbd918961f0dc5433bffaebc8780c08da1a5f5fad616e0b1b"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.3.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "31b2c39dfe0d1894a12c7c501dc8f76bbf477880242410cd227dd973a5dcf0f5"
    end
  end

  def install
    bin.install "ptyd"
  end
end

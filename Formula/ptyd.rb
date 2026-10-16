class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.5.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.5.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "3fc96cf94503e525071594c816c1cdd879cf2455bd318fa4a664b9188ffdd8e7"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.5.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "0766d6309a12b7e0922c0c3e064d7bd8eb7bfa528f660f1335676d8213061bde"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.5.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9709420d8b651939da16e45877a5de11702a2b6ef004fa6d31951a4d48e13c3a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.5.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "21e1beaef80eca8a029365ddbae29dbfeaa17762074dcc8f742afb8452cce4fe"
    end
  end

  def install
    bin.install "ptyd"
  end
end

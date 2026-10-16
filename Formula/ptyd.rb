class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.6.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.6.0/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "fa24c451dbb92a813ee99c78e13ae39c2834e56558ba27cb04f459c022b1c464"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.6.0/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "f29fa50daf1de911e70a12e2fb1f216763f090d138d0ce7f7f4fb3b283653cf0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.6.0/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "0e3736da94cb6c707177cd9c2fe8651acd9e1093fd55b973f5a6a2d5343e36b7"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.6.0/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "536c256a77fcc4394cc7a4f9c71678d4fc6d5666b40c804313c5e87ac1bf96d4"
    end
  end

  def install
    bin.install "ptyd"
  end
end
